#include "managerclient.h"
#include <array>

#include "utility.h"

#define LOG_FILENAME "log.txt"


// CREATE_COMMIT!!!

ManagerClient::ManagerClient() 
    : io_context_(), socket_(io_context_), file_logger_(LOG_FILENAME)
{
}

ManagerClient::~ManagerClient() {
    close_socket();
}

bool ManagerClient::connect(const std::string &url) {
    boost::system::error_code ec;
    boost::asio::ip::tcp::resolver resolv(io_context_);
    auto endpoints = resolv.resolve(url, "80", ec);

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
            return true;
        }
    }
}

bool ManagerClient::check_ranges_existance() {
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

    while (true) {
        size_t len = socket_.read_some(boost::asio::buffer(buffer_), ec);
        if (ec == boost::asio::error::eof) {
            break;
        } else if (ec) {
            file_logger_.write_msg("Failed to check ranges-request existance while reading. Close socket", true);
            close_socket();
            throw std::runtime_error("failed to read http-response");
        }

        if (Utility::sstrstr(buffer_.data(), "Accept-Ranges: bytes", len)) {
            file_logger_.write_msg("Accept-ranges is available", true);
            return true;
        } else {
            file_logger_.write_msg("Accept-ranges is not available", true);
            return false;
        }
    }

    return false;
}

void ManagerClient::close_socket() {
    if (socket_.is_open()) {
        socket_.shutdown(boost::asio::ip::tcp::socket::shutdown_both);
        socket_.close();
    }
}

    //    std::array<char, 4096> buf;
     //   strcpy(buf.data(), "HEAD / HTTP/1.1\n"
      //                     "Host: example.com\n"
       //                    "User-Agent: curl/7.81.0\n"
         //                  "Accept: */*\n\n");
/*

        boost::asio::write(socket_, boost::asio::buffer(buf), ec);
        if (ec) {
            std::cerr << "Failed to send HTTP-request.\n";
            socket_.close();
            return false;
        }

        while (true) {
            size_t len = socket_.read_some(boost::asio::buffer(buf), ec);
            if (ec == boost::asio::error::eof) {
                break;
            } else if (ec) {
                std::cerr << "Finish to read\n";
                socket_.close();
                return false;
            }
            
            if (Utility::sstrstr(buf.data(), "Accept-Ranges: bytes", len)) {
                std::cerr << "\nWas found!\n";
                socket_.close();
                return true;
            } else {
                std::cerr << "\nNOT FOUND\n";
                socket_.close();
                return false;
            }

            std::cout.write(buf.data(), len);
        }
        
        socket_.close();
        return true;
    }
}
*/
