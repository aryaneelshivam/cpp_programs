//stack using array
#include <iostream>
#include <stack>
using namespace std;

class Stack{
    int arr[5]; //static array of size 5
    int top;

    public:
    Stack(){ 
        top = -1; //initial index of top is -1
    }

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

    void display(){ //displays the stack: not necessary for the stack operations
        if(isempty()){
            cout << "stack is empty" << endl;
            return;
        } else {
            for(int i = 0; i <= top; i++){
                cout << arr[i] << " ";
            }
        }
        cout << endl;
    }
};

int main(){
    Stack s1; //created stack object
    s1.push(1);  //stack operations
    s1.push(2);
    s1.push(3);
    s1.push(4);
    s1.push(5);
    cout << s1.peek() << endl;
    s1.pop();  //popiing an element
    cout << s1.peek() << endl; //checking the top element
    s1.display(); //displaying the stack


    //---------------------------------------------// using <stack> library; no need to build our own stack class
    stack<int> st;
    st.push(10);
    st.push(20);
    st.push(30);
    st.push(40);
    st.push(50);
    cout << st.top() << endl;
    st.pop();
    cout << st.top() << endl;

    return 0;
};