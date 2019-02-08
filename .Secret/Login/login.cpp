#include <iostream>
using namespace std;

int main() {
    cout << "Please enter a 5 character password: ";
    string s;
    cin >> s;
    if (s == "fakes") {
        cout << "You have now logged in. Welcome 'money'" << endl << endl;
        cout << "You: (Real emphases on 'money' there) sheesh" << endl;
    }
    
    else cout << "Incorrect login" << endl;
}