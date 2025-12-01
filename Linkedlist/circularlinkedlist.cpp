//traversal of circular linked list using do-while loop
#include <iostream>
using namespace std;

struct Node{
    int data;
    Node* next;

    //constructor
    Node(int data){
        data = data;
        next = NULL;
    }
};
void make_circular(Node* head){
    if(head==NULL) return;
    Node* temp = head;
    while(temp->next) temp = temp->next;
    temp->next = head;
}

void print_circular(Node* head){
    if(head==NULL) return;
    Node* temp = head;
    do{
        cout << temp->data << " ";
        temp = temp->next;
    } while(temp != head);
}
int main(){
    Node* head = NULL;
    make_circular(head);
    print_circular(head);
    return 0;
}
