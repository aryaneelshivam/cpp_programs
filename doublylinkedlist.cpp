#include <iostream>
using namespace std;

struct Node{
    int data;
    Node* next;
    Node* prev;

    //constructor
    Node(int data){
        data = data;
        next = NULL;
        prev = NULL;
    }
};

int main(){
    Node* head = new Node(11);
    Node* second = new Node(22);
    Node* third = new Node(33);

    head->next = second;
    head->prev = NULL;

    second->next = third;
    second->prev = head;

    third->next = NULL;
    third->prev = second;

    return 0;
}
