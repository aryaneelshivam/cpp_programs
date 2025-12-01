//strings in cpp and their operations 
#include <iostream>
#include <string>
using namespace std;

int main(){
    string str = "Hello World";
    string str2;
    getline(cin, str2);
    cout << "String 1: " << str << endl;
    cout << "string 2: " << str2 << endl;

    cout << "Length of string 1: " << str.length() << endl;
    cout << "Length of string 2: " << str2.length() << endl;

    str.push_back('!');
    cout << "String 1 after pushing back: " << str << endl;

    str.pop_back();
    cout << "String 1 after popping back: " << str << endl;

    str.append(str2);
    cout << "String 1 after appending string 2: " << str << endl;

    str.insert(0, "Hello");
    cout << "String 1 after inserting 'Hello' at position 0: " << str << endl;

    str.erase(0, 5);
    cout << "String 1 after erasing 'Hello' from position 0: " << str << endl;

    str.replace(0, 5, "Hello");
    cout << "String 1 after replacing 'Hello' from position 0: " << str << endl;
}