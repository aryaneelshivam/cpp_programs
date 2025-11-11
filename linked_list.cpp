#include <iostream>
using namespace std;

struct Node{
    int data;
    Node* next;
};

void insertatend(Node* head, int data){ // to insert a node at the end of the linked list
    Node* newnode = new Node();
    newnode->data = data;
    newnode->next = NULL;
    if(head == NULL){
        head = newnode;
    } else {
        Node* temp = head;
        while(temp->next != NULL){
            temp = temp->next;
        }
        temp->next = newnode;
    }

}

void insertatbegin(Node* head, int data){ // to insert a node at the beginning of the linked list
    Node* newnode = new Node();
    newnode->data = data;
    newnode->next = head; //inserting new node before the head
    head = newnode; //updating the head to the new node
}

void insertatmiddle(Node* head, int data, int position){
    Node* newnode = new Node();
    newnode->data = data;
    Node* temp = head;
    while(temp != NULL && temp->data != position){
        temp = temp->next;
    }

    newnode->next = temp->next; //inserting new node after the target node
    temp->next = newnode; //updating the next pointer of the target node to the new node
    cout << "Node inserted at middle" << endl;
}

void displaynode(Node* head){
    Node* temp = head;
    while(temp != NULL){
        cout << temp->data << " ";
        temp = temp->next;
    }
    cout << endl;
}

void deletenode(Node* head, int data){
    Node* temp = head;
    while(temp != NULL && temp->data != data){ //iterating till target node is found to delete
        temp = temp->next;
    }
    if(temp == NULL && temp->next == NULL){ //if target node is not found
        cout << "Node not found" << endl;
        return;
    } else{
        Node* prev = temp; //create a previous node 
        prev->next = temp->next; //previous node points to the next node of the target node
        delete temp;
        cout << "Node deleted" << endl;
    }
}

void deleteEndNode(Node* head){
    Node* temp = head;
    while(temp->next->next != NULL){  //iterate till the second last node is found
        temp = temp->next;
    }
    delete temp->next; //delete the last node
    temp->next = NULL; //set the next pointer of the second last node to NULL
    cout << "End node deleted" << endl;
}

void deleteBeginNode(Node* head){
    Node* temp = head; //store the head node in a temporary node
    head = temp->next; //update the head to the next node
    delete temp; //delete the temporary node
    cout << "Begin node deleted" << endl;
}

Node* reversenode(Node* head){
    Node* prev = NULL;
    Node* current = head;
    Node* next = NULL;
    while(current != NULL){
        next = current->next; //store the next node
        current->next = prev; //reverse the current node's pointer
        prev = current; //move the previous node to the current node
        current = next; //move the current node to the next node
    }
    head = prev; //update the head to the new head
    return head;
}

void evenorodd(Node* head){ //to check of number of nodes are even or odd
    Node* fast = head; //hare and tortoise algorithm
    Node* slow = head;
    while(fast != NULL && fast->next != NULL){
        slow = slow->next;
        fast = fast->next->next;
    }
    if(fast == NULL){ //if fast is NULL, then the number of nodes are even
        cout << "Even length" << endl;
    } else { //if fast is not NULL, then the number of nodes are odd
        cout << "Odd length" << endl;
    }
    cout << "Middle element is: " << slow->data << endl;
}

bool loopdetection(Node* head){
    Node* fast = head;
    Node* slow = head;
    while(fast != NULL && fast->next != NULL){
        slow = slow->next;
        fast = fast->next->next;
    }
    if(fast == slow){ //if fast and slow are at the same node, then there is a loop
        return true;
    } else {
        return false;
    }
}

int loopbeginning(Node* head){
    Node* fast = head;
    Node* slow = head;
    while(fast != NULL && fast->next != NULL){
        slow = slow->next;
        fast = fast->next->next;
        if(fast == slow){ //first detect if there is a loop
            break;
        }
    }
    slow = head; //reset the slow pointer to the head
    while(slow != fast){ 
        slow = slow->next; //move slow pointer one step at a time
        fast = fast->next; //move fast pointer one step at a time
    }
    return slow->data; //return the data of the node where the loop starts
}

bool ispalindrome(Node* head){
    Node* fast = head;
    Node* slow = head;
    while(fast != NULL && fast->next != NULL){
        slow = slow->next;
        fast = fast->next->next;
    }
    Node* secondhalf  = slow->next; //store the second half of the linked list
    Node* firsthalf = head; //store the first half of the linked list
    Node* secondhalf_reverse = reversenode(secondhalf); //reverse the second half of the linked list
    while(secondhalf_reverse != NULL){
        if(firsthalf->data != secondhalf_reverse->data){ //if the data of the first half is not equal to the data of the second half, then the linked list is not a palindrome
            return false;
        } else {
            firsthalf = firsthalf->next;
            secondhalf_reverse = secondhalf_reverse->next;
        }
    }
    return true;
}




