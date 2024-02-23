#include "filelogger.h"

#include <chrono>
#include <exception>
#include <iostream>

FileLogger::FileLogger(const std::string& filename)
    : filename_(filename)
{
    log_out_.exceptions(std::ios::failbit | std::ios::badbit);
    open_file_for_log();
}

FileLogger::~FileLogger() {
    log_out_.close();
}

void FileLogger::write_msg(const std::string& msg, bool with_date) {
    using namespace std::chrono;

    try {
        if (with_date) {
            std::time_t current_time = system_clock::to_time_t(system_clock::now());
            log_out_ << std::ctime(&current_time);
        }

        log_out_ << "\t" << msg << "\n";
    } catch (std::ios_base::failure& fail) {
        reopen_file_for_log();
    }
}

void FileLogger::open_file_for_log() {
    log_out_.open(filename_, std::ios::app);
}

void FileLogger::reopen_file_for_log() {
    try {
        open_file_for_log();
    } catch (std::ios_base::failure& ex) {
        std::cerr << "failed to reopen file for logging";
        throw ex;
    }
}
