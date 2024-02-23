#ifndef UTILITY_H
#define UTILITY_H

#include <cstddef>

class Utility
{
public:
    Utility();

    static const char* sstrstr(const char *haystack, const char *needle, size_t length);
};

#endif // UTILITY_H
