#ifndef MANAGERCLIENT_H
#define MANAGERCLIENT_H

#include <boost/asio.hpp>
#include <iostream>
#include <string>
#include <array>

#include "filelogger.h"

class ManagerClient
{
public:
    ManagerClient();
    ~ManagerClient();

    bool connect(const std::string& url);
    void start_downloading(const std::string& filename);

private:
    boost::asio::io_context io_context_;
    boost::asio::ip::tcp::socket socket_;
    std::vector<std::string> url_comp_;

    size_t content_length_ = -1;
    bool is_accept_ranges_ = false;

    FileLogger file_logger_;
    std::array<char, BUFSIZ> buffer_;

    void get_connection_info();
    void download_content(const std::string& filename);
    void reset_state();
    void close_socket();
};

#endif // MANAGERCLIENT_H
