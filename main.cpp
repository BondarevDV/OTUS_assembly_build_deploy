#include "lib.h"

#include <spdlog/spdlog.h>

int main()
{
    auto logger = spdlog::stdout_logger_mt("console");
    logger->info("build {} \n Hello, World!", version());

    return 0;
}
