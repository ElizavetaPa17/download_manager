#ifndef FILELOGGER_H
#define FILELOGGER_H

#include <string>
#include <fstream>


class FileLogger
{
public:
    FileLogger(const std::string& filepath);
    ~FileLogger();

    void write_msg(const std::string& msg, bool with_date);

private:
    int file_desc_ = 0;
    std::string filename_;
    std::ofstream log_out_;

    void open_file_for_log();
    void reopen_file_for_log();
    std::string create_log_header();
};

#endif // FILELOGGER_H
