#include "lib.h"

#include <spdlog/spdlog.h>



int main()
{
        auto logger = spdlog::stdout_logger_st("console");
        logger->set_pattern("%v");
        logger->info("build {}\nHello, World!", version());
        return 0;
}

