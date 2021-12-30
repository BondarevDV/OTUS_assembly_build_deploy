#include "lib.h"
#include "spdlog/sinks/stdout_color_sinks.h"
#include <spdlog/spdlog.h>



int main()
{
        auto logger = spdlog::stdout_color_mt("console");
        //logger->set_pattern("%v");
        logger->info("build {}\nHello, World!", version());
        return 0;
}

