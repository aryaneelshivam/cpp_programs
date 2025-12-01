#include <iostream>
using namespace std;

struct Node{
    int data;
    Node* next;
};

class Stack{
    Node* top; // top is equal to head pointer of the linked list
    public:
    Stack(){
        top = NULL; //initializing top to NULL
    }

    void push(int data){ //adding to the beginning of the linked list
        Node* newnode = new Node();
        newnode->data = data;
        newnode->next = top;
        top = newnode;
    }

    void pop(){ //deleting from the beginning of the linked list
        if(top == NULL){
            cout << "Stack is empty" << endl;
            return;
        } else {
            Node* temp = top;
            top = temp->next;
            delete temp;
            cout << "Popped element is: " << temp->data << endl;
        }
    }

    bool isempty(){ //checking if the stack is empty
        if(top == NULL){
            return true;
        } else {
            return false;
        }
    }

    void display(){ //displaying the stack
        if(isempty()){
            cout << "stack is empty" << endl;
            return;
        } else {
            Node* temp = top;
            while(temp != NULL){
                cout << temp->data << " ";
                temp = temp->next;
            }
            cout << endl;
        }
    }

    void peek(){
        if(isempty()){
            cout << "stack is empty" << endl;
            return;
        } else {
            cout << "top element is: " << top->data << endl; //returning the top element of the stack
        }
    }

};

int main(){
    Stack s1;
    s1.push(1);
    s1.push(2);
    s1.push(3);
    cout << "Stack is: ";
    s1.display();
    s1.pop();
    cout << "after popping the stack is:";
    s1.display();
    s1.peek();
    return 0;
}