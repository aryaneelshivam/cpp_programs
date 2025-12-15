//implementation of queue using linked list
#include <iostream>
using namespace std;

class Node{
    public:
    int data;
    Node* next;
    
};

class Queue{
    Node* front;
    Node* rear;
    int count;
    public:
    Queue(){
        front = NULL;
        rear = NULL;
        count = 0;
    }

    void enqueue(int data){ //queue uses the concept of insert at end and delete at front
        Node* newnode = new Node();
        newnode->data = data;
        newnode->next = NULL;
        if(front == NULL){
            front = newnode;
            rear = newnode;
            count++;
        } else {
            rear->next = newnode;
            rear = newnode;
            count++;
        }
    }

    void dequeue(){
        if(front == NULL){
            cout << "Queue is empty" << endl;
            return;
        } else{
            Node* temp = front;
            front = front->next;
            delete temp;
            count--;
        }
    }

    int Front(){
        if(front == NULL){
            cout << "Queue is empty" << endl;
            return -1;
        }
        return front->data;
    }

    int Rear(){
        if(rear == NULL){
            cout << "Queue is empty" << endl;
            return -1;
        }
        return rear->data;
    }

    void display(){
        Node* temp = front;
        while(temp != NULL){
            cout << temp->data << " ";
            temp = temp->next;
        }
        cout << endl;
    }
};

int main(){
    Queue q;
    q.enqueue(1);
    q.enqueue(2);
    q.enqueue(3);
    q.enqueue(4);
    q.enqueue(5);
    q.display();
    q.dequeue();
    q.display();
    return 0;
}