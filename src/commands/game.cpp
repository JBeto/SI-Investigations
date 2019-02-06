#include "game.h"
#include <iostream>
#include <fstream>
using namespace std;

bool Game::checkFile(const std::string &path, const std::string &answer) {
    auto p = getParent() / path;
    ifstream ifin(p);
    string a; ifin >> a;
    return a == answer;
}

void Game::printFile(const std::string path) {
    auto p = getParent() / ".Secret" / path;
    ifstream ifin(p);
    char ch;
    while (ifin.get(ch)) cout << ch;
    ifin.close();
}

State Game::getGameState() {
    auto p = getParent() / ".Secret" / "game";
    ifstream ifin(p);
    int i;
    ifin >> i;
    State s = (State)(i);
    ifin.close();
    return s;
}

void Game::setGameState(State state) {
    auto p = getParent() / ".Secret" / "game";
    ofstream of(p);
    of << (int)(state) << endl;
    of.close();
}

fs::path Game::getParent() {
    auto p = fs::current_path();
    while (p.filename() != "SI-Investigations") p = p.parent_path();
    return p;
}

void Game::moveFile(const std::string &file, const std::string &endPath) {
    try {
        fs::rename(getParent() / file, getParent() / endPath);
    }
    catch (const fs::filesystem_error &e) {
        std::cout << "Something went wrong in the investigation!" << std::endl;
    }
}

void Game::removeFile(const std::string &file) {
    try {
        fs::remove(fs::current_path() / file);
    }
    catch (const fs::filesystem_error &e) {
        std::cout << "Something went wrong in the investigation!" << std::endl;
    }
}

void Game::execute(std::string command) {
    if (command == "invest.phone") {
        std::cout << "(A lot of shinies on Pokemon Go)" << std::endl;
    }
    if (command == "invest.wallpaper") {
        printFile("wallpaper.txt");
        setGameState(State::Question);
    }
    else if (command == "investHouse") {
        if (getGameState() == State::Assignment) {
            setGameState(State::House);
            moveFile(".Secret/Andre's_House", "Mystery/Chapter_1/Streets/Andre's_House");
            std::cout << "Click.\nYou have now entered the house." << std::endl;
            std::cout << "Chief: Keep your guard up - why is the door unlocked in the first place?" << std::endl;
        }
    }
    else if (command == "investH") {
        std::cout << "Woah, didn't mean to see THAT. Wrong house." << std::endl;
    }
    if (command == "talkChief.person") {
        switch(getGameState()) {
            case State::Intro:
                printFile("chief1.txt");
                setGameState(State::Assignment);
                break;
            case State::Assignment:
                printFile("chief2.txt");
                moveFile(".Secret/Omar's_Phone", "Notes/Omar's_Phone");
                moveFile(".Secret/machine_learning", "Mystery/Chapter_1/SIPD/Your_PC/Code/machine_learning");
                moveFile(".Secret/people.txt", "Notes/people.txt");
                break;
            case State::House:
                printFile("chief3.txt");
                break;
            case State::Question:
                printFile("chief4.txt");
                moveFile(".Secret/Silicon_Valley", "Mystery/Chapter_1/Silicon_Valley");
                break;
            case State::Password:
                printFile("chief5.txt");
                break;
            default:
                break;
        }
    }
    else if(command == "talkGuard.person") {
        std::cout << "There's really nothing here to do." << std::endl;
    }
    else if (command == "talkKennen.person") {
        switch(getGameState()) {
            case State::Password:
            case State::Question:
                if (checkFile("password", "money")) {
                    std::cout << "Welcome to the Cult ~" << std::endl;
                }
                else {
                    std::cout << "Put in the password on a file called 'password.txt' on the computer first. We'll talk again if it's correct." << std::endl;
                }
                break;
            default:
                break;
        }
    }
    else {
        std::cout << "You can't perform this action!" << std::endl;
    }
}