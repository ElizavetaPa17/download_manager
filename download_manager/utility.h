#ifndef UTILITY_H
#define UTILITY_H

#include <cstddef>
#include <string>
#include <vector>

class Utility
{
public:
    Utility();

    static char* sstrstr(char *haystack, const char *needle, size_t length);
    static std::vector<std::string> resolve_url_components(const std::string &url);
};

#endif // UTILITY_H
