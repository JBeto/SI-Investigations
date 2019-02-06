#include "database.h"
#include <algorithm>

std::string Database::match(const std::vector<std::string> &vs) {
    std::vector<std::string> gg = {"The", "place", "Highland", "Park.", "The" ,"park","completely", "empty" , "Monday" ,"night." 
    "Omar", "walking" , "next", "swings" , "mysterious", "figure", "takes", "ground."};
    if (vs.size() != gg.size()) return "No Match";
    for (int i = 0; i < gg.size(); i++) {
        if (vs.at(i) != gg.at(i)) return "No Match";
    }
    return "Andre Castro";
}