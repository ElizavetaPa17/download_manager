#include "utility.h"

#include <cstring>
#include <iostream>
#include <exception>

Utility::Utility()
{

}

char* Utility::sstrstr(char *haystack, const char *needle, size_t length)
{
    size_t needle_length = strlen(needle);
    size_t i;
    for (i = 0; i < length; i++) {
        if (i + needle_length > length) {
            return NULL;
        }
        if (strncmp(&haystack[i], needle, needle_length) == 0) {
            return &haystack[i];
        }
    }
    return NULL;
}

std::vector<std::string> Utility::resolve_url_components(const std::string &url) {
    std::vector<std::string> components;

    size_t host_end = 0;
    if (url.find("https://") != std::string::npos) {
        if ((host_end = url.find("/", sizeof("https://"))) != std::string::npos && host_end != 0) {
            components.push_back(url.substr(sizeof("https://")-1, host_end-sizeof("https://")+1));
            components.push_back(url.substr(host_end+1));
        }
    } else {
        if ((host_end = url.find("/")) != std::string::npos && host_end != 0) {
            components.push_back(url.substr(0, host_end));
            components.push_back(url.substr(host_end+1));
        } else {
            components.push_back(url);
            components.push_back("");
        }
    }

    return components;
}

std::unique_ptr<std::ofstream> Utility::open_file_for_writing(const std::string& filename) {
    std::unique_ptr<std::ofstream> file_strm_ptr = std::make_unique<std::ofstream>(filename, std::ios::out);
    if (!file_strm_ptr->is_open()) {
        throw std::runtime_error("cannot open " + filename);
    }

    return file_strm_ptr;
}
