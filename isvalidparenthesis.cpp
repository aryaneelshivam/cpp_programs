// check if the parenthesis are valid using stack 
#include <iostream>
#include <stack>
using namespace std;


bool isvalid(string str){ //function to check if parenthsis is valid 
    stack<char> s;
    for(char ch : str){
        if(ch == '(' || ch == '{' || ch == '['){ //pushes all opening parenthsis
            s.push(ch);
        } else{
            s.pop(); //if the character is not opening parenthsis then pops them; pops all closing parenthsis
        }
    }
    return s.empty(); //according to logic; opening parenthsis == closing parenthsis; then stack would be empty, if isempty then valid patenthsis else invalid
};

int main(){
    string str = "({[]})"; //entering the parenthesis
    if(isvalid(str)){
        cout << "Valid";
    } else {
        cout << "Invalid";
    }
    return 0;
}
