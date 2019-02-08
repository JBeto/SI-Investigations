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
#include <string>
#include <iostream>
#include <filesystem>
#include "game.h"
#include "cxxopts.hpp"
namespace fs = std::filesystem;



// TODO
void listFiles()
{
    Game g;
   auto path = g.getParent() / ".Secret" / "Notes_";
    for (const auto & entry : fs::directory_iterator(path))
        std::cout << entry.path().filename() << std::endl;
}

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

        bool shouldList = false;
        options.add_options("Files")
            ("l,list", "List all the files in your Documents", cxxopts::value<bool>(shouldList))
            ("v,view", "View a specific file", cxxopts::value<std::string>())
        ;

        auto result = options.parse(argc, argv);

        if (result.count("help"))
        {
            std::cout << options.help({"", "Files"}) << std::endl;
            exit(0);
        }
        if (result.count("view")) {
            Game g;
            std::string text = result["view"].as<std::string>();
            g.printFile("Notes_/" + text);
        }

        if (shouldList)
        {
            listFiles();
        }
    }
    catch (const cxxopts::OptionException& e) {
        std::cout << "error parsing options: " << e.what() << std::endl;
        exit(1);
    }
    return 0;
}