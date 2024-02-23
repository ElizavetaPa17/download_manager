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
    bool check_ranges_existance();

private:
    boost::asio::io_context io_context_;
    boost::asio::ip::tcp::socket socket_;

    FileLogger file_logger_;
    std::array<char, BUFSIZ> buffer_;

    void close_socket();
};

#endif // MANAGERCLIENT_H
