//stack using array
#include <iostream>
using namespace std;

class stack{
    int arr[5]; //static array of size 5
    int top;

    public:
    stack(){ 
        top = -1; //initial index of top is -1
    }


    //4 operations in a stack
    //push
    //pop
    //peek
    //isempty

    void push(int x){ //pushes a new element into the stack
        if(top == 4){
            cout << "stack overflow";
            return;
        } else {
            top++;
            arr[top] = x;
        }
        
    }  

    bool isempty(){ //checks if the stack is empty
        if(top == -1){
            return true;
        } else {
            return false;
        }
    }

    void pop(){ //pops the top element from the stack
        if(isempty()){ 
            cout << "stack underflow" << endl;
            return;
        } else {
            top--;
        }
    }

    int peek(){ //returns the top element of the stack
        if(isempty()){
            cout << "stack is empty" << endl;
            return -1;
        } else {
            return arr[top];
        }
    }

};
