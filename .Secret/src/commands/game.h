#ifndef GAME_H
#define GAME_H

#include <string>
#include <filesystem>
namespace fs = std::filesystem;

enum class State {
    Intro = 0,
    Tutorial,
    Assignment,
    House,
    Question,
    Password,
};

class Game {
    private:
        bool checkFile(const std::string &path, const std::string &answer);
        State getGameState();
        void setGameState(State state);
        void moveFile(const std::string &file, const std::string &endPath);
        void removeFile(const std::string &file);
    public:
        void execute(std::string command);
        fs::path getParent();
        void printFile(const std::string path);
};

#endif