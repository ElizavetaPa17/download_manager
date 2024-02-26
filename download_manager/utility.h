#ifndef UTILITY_H
#define UTILITY_H

#include <cstddef>
#include <string>
#include <vector>
#include <fstream>
#include <memory>

class Utility
{
public:
    Utility();

    static char* sstrstr(char *haystack, const char *needle, size_t length);
    static std::vector<std::string> resolve_url_components(const std::string &url);
    static std::unique_ptr<std::ofstream> open_file_for_writing(const std::string& filename);

};

#endif // UTILITY_H
