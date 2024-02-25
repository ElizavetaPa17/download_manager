#include "managerclient.h"
#include <array>

#include "utility.h"
#include <QDebug>

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

    std::vector<std::string> url_comp = Utility::resolve_url_components(url);
    if (url_comp.size() != 2) {
        file_logger_.write_msg(std::string("Invalid url get: ") + url, true);
        return false;
    }

    qDebug() << url_comp;

    boost::system::error_code ec;
    boost::asio::ip::tcp::resolver resolv(io_context_);
    auto endpoints = resolv.resolve(url_comp[0], "80", ec);

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

        //get_connection_info();
        //qDebug() << is_accept_ranges_;
        //qDebug() << content_length_;
        return true;
    }
}

void ManagerClient::start_downloading() {

}

void ManagerClient::get_connection_info() {
    static std::string head_request = "HEAD / HTTP/1.1\n"
                                      "Host: example.com\n"
                                      "User-Agent: curl/7.81.0\n"
                                      "Accept: */*\n\n";
    if (!socket_.is_open()) {
        throw std::logic_error("client socket is closed");
    }

    boost::system::error_code ec;
    boost::asio::write(socket_, boost::asio::buffer(head_request), ec);
    if (ec) {
        file_logger_.write_msg("Failed to check ranges-request existance while writing. Close socket", true);
        close_socket();
        throw std::runtime_error("failed to send http-request");
    }

    while (!is_accept_ranges_ && content_length_ < 0) {
        size_t len = socket_.read_some(boost::asio::buffer(buffer_), ec);
        if (ec == boost::asio::error::eof) {
            if (!is_accept_ranges_) {
                file_logger_.write_msg("Accept-ranges is not available", true);
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
