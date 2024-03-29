#include "managerclient.h"
#include <array>

#include "utility.h"

#include <boost/bind.hpp>
#include <QDebug>
#include <QStringView>

#define LOG_FILENAME "log.txt"

ManagerClient::ManagerClient() 
    : io_context_(), socket_(io_context_), file_logger_(LOG_FILENAME)
{
}

ManagerClient::~ManagerClient() {
    close_socket();
}

bool ManagerClient::connect(const std::string &url) {
    reset_state();

    url_comp_ = Utility::resolve_url_components(url);

    boost::system::error_code ec;
    boost::asio::ip::tcp::resolver resolv(io_context_);
    auto endpoints = resolv.resolve(url_comp_[0], "80", ec);

    if (ec) {
        file_logger_.write_msg(std::string("Invalid url get: ") + url, true);
        return false;
    } else {
        file_logger_.write_msg(std::string("Success to resolve url: ") + url, true);
        file_logger_.write_msg("Try to connect...", false);

        close_socket();
        boost::asio::connect(socket_, endpoints, ec);

        if (ec) {
            file_logger_.write_msg("Failed to connect", true);
            return false;
        } else {
            file_logger_.write_msg("Successfull connection", true);
        }
        return true;
    }
}

void ManagerClient::start_downloading(const std::string& filename) {
    if (!socket_.is_open()) {
        throw std::logic_error("client socket is closed");
    }

    get_connection_info();
    if (is_accept_ranges_) {
        // TODO
        // accept_parted_content();
        download_content(filename);
    } else {
        download_content(filename);
    }

    //qDebug() << "is accept_range: " << is_accept_ranges_ << "content_length: " << content_length_;
}

// https://libeldoc.bsuir.by/bitstream/123456789/34863/1/Kalugina_2019.pdf

void ManagerClient::get_connection_info() {
    std::string head_request(QString("HEAD /%2 HTTP/1.1\n"
                                     "Host: %1\n"
                                     "User-Agent: curl/7.81.0\n"
                                     "Accept: */*\n\n")
                                     .arg(QStringView(QString(url_comp_[0].c_str())))
                                     .arg(QStringView(QString(url_comp_[1].c_str()))).toStdString());

    boost::system::error_code ec;
    boost::asio::write(socket_, boost::asio::buffer(head_request), ec);
    if (ec) {
        file_logger_.write_msg("Failed to check ranges-request existance while writing. Close socket", true);
        close_socket();
        throw std::runtime_error("failed to send http-request");
    }

    while (content_length_ == -1) {
        size_t len = socket_.read_some(boost::asio::buffer(buffer_), ec);
        if (ec == boost::asio::error::eof) {
            if (!is_accept_ranges_) {
                file_logger_.write_msg("Accept-ranges is not available", false);
            }

            break;
        } else if (ec) {
            file_logger_.write_msg("Failed to check ranges-request existance while reading. Close socket", true);
            close_socket();
            throw std::runtime_error("failed to read http-response");
        }

        if (Utility::sstrstr(buffer_.data(), "Accept-Ranges: bytes", len)) {
            file_logger_.write_msg("Accept-ranges is available", true);
            is_accept_ranges_ = true;
        }

        // check this area
        char* cont_len_ptr = nullptr, *new_line_ptr = nullptr;
        if (cont_len_ptr = Utility::sstrstr(buffer_.data(), "Content-Length: ", len)) {
            cont_len_ptr += sizeof("Content-Length: ")-1;
            char new_line = '\n';
            new_line_ptr = strstr(cont_len_ptr, &new_line);

            *new_line_ptr = 0;
            content_length_ = std::atoi(cont_len_ptr);
            *new_line_ptr = '\n';
        }
    }
}

void ManagerClient::reset_state() {
    is_accept_ranges_ = false;
    content_length_ = -1;
    close_socket();
}

void ManagerClient::close_socket() {
    if (socket_.is_open()) {
        socket_.shutdown(boost::asio::ip::tcp::socket::shutdown_both);
        socket_.close();
    }
}

void ManagerClient::download_content(const std::string& filename) {
    file_strm_ptr_ = Utility::open_file_for_writing(filename);
    send_initial_get_request();
    read();
}

void ManagerClient::send_initial_get_request() {
    std::string get_request(QString("GET /%2 HTTP/1.1\n"
                                    "Host: %1\n"
                                    "User-Agent: curl/7.81.0\n"
                                    "Accept: */*\n\n")
                                    .arg(QString(url_comp_[0].c_str()))
                                    .arg(QString(url_comp_[1].c_str())).toStdString());

    boost::system::error_code ec;
    boost::asio::write(socket_, boost::asio::buffer(get_request), ec);
    if (ec) {
        file_logger_.write_msg("Failed to send initial get-request. Close socket", true);
        close_socket();
        throw std::runtime_error("failed to send http-request");
    }
}

void ManagerClient::read() {
    boost::asio::async_read(socket_,
                            boost::asio::buffer(buffer_),
                            boost::asio::transfer_at_least(1),
                            boost::bind(&ManagerClient::read_handler, this, _1, _2));

    // refactoring
    std::thread t([&]() {
        try {
            io_context_.run();
        } catch(std::exception const &ex) {
            qDebug() << ex.what();
        } catch (...) {

        }
    });

    t.detach();
}

void ManagerClient::read_handler(const boost::system::error_code &ec, std::size_t bytes_read) {
    if (ec) {
        file_logger_.write_msg("Fatal error while downloading file", true);
        file_logger_.write_msg(ec.message(), false);
        throw std::runtime_error(ec.message());
    }

    qDebug() << buffer_.data();
}
