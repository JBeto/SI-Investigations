/*

Copyright (c) 2014 Jarryd Beck

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

*/

#include <iostream>
#include <filesystem>
#include "cxxopts.hpp"
#include "game.h"

namespace fs = std::filesystem;

int main(int argc, char* argv[])
{
    try
    {
        cxxopts::Options options(argv[0], " - example command line options");
        options
            .positional_help("[optional args]")
            .show_positional_help();
            
        options.add_options()
            ("help", "Print help")
        ;

        options.add_options("Investigation")
            ("h,house", "Investigate a house", cxxopts::value<std::vector<std::string>>())
            ("e,evidence", "Investigate a piece of evidence", cxxopts::value<std::string>())
            ("p,person", "Investigate a person", cxxopts::value<std::string>())
        ;

        auto result = options.parse(argc, argv);

        if (result.count("help"))
        {
            std::cout << options.help({"", "Investigation"}) << std::endl;
            exit(0);
        }

        if (result.count("evidence"))
        {
            std::string evidence = result["evidence"].as<std::string>();
            Game g;
            g.execute("invest" + evidence);
        }

        // Hardcoded the house itself
        if (result.count("house"))
        {
            auto& v = result["house"].as<std::vector<std::string>>();
            std::vector<std::string> andre = {"College", "Avenue", "34"};
            for (size_t i = 0; i < andre.size(); i++) {
                if (andre.at(i) != v.at(i)) {
                    std::cout << "Not enough evidence to enter the house." << std::endl;
                    exit(0);
                }
            }
            Game g;
            g.execute("investHouse");
        }

        if (result.count("person")) {
            std::cout << "(As if we have the budget to perform background checks...)" << std::endl;
        }
    }
    catch (const cxxopts::OptionException& e) {
        std::cout << "error parsing options: " << e.what() << std::endl;
        exit(1);
    }
    return 0;
}