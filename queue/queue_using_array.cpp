//implementation of queue using array;
#include <iostream>
using namespace std;


class Queue{
    int arr[5];
    int front;
    int rear;
    int count;
    public:
    Queue(){
        front = 0;
        rear = -1;
        count = 0;
    }

    bool isfull(){
        return count == 5;
       }
       bool isempty(){
           return count == 0;
       }

    void push(int x){
        if(isfull()){
            cout << "Queue is full" << endl;
        }
        else {
        rear = (rear + 1) % 5; //circular increment of rear index
        arr[rear] = x;
        count++;
        }
    }
    void pop(){
        if(isempty()){
            cout << "Queue is empty" << endl;
        } else {
            front = (front + 1) % 5; //circular increment of front index
            count--;
        }
    }

    int peek(){
        if(isempty()){
            cout << "Queue is empty" << endl;
            return -1;
        } else {
            return arr[front];
        }
    }

};

int main(){
    Queue q1;
    q1.push(1);
    q1.push(2);
    q1.push(3);
    q1.push(4);
    q1.push(5);
    cout << q1.peek() << endl;
    q1.pop();
    cout << q1.peek() << endl;
    return 0;
} 