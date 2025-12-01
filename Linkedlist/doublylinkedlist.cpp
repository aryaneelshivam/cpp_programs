#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
    Node* prev;
};

// Insert at beginning
void insertAtBeg(Node* &head, int data) {
    Node* newnode = new Node();
    newnode->data = data;
    newnode->next = head;
    newnode->prev = NULL;

    if (head != NULL)
        head->prev = newnode;

    head = newnode;
}

// Insert at end
void insertAtEnd(Node* &head, int data) {
    Node* newnode = new Node();
    newnode->data = data;
    newnode->next = NULL;
    newnode->prev = NULL;

    if (head == NULL) {
        head = newnode;
        return;
    }

    Node* temp = head;
    while (temp->next != NULL)
        temp = temp->next;

    temp->next = newnode;
    newnode->prev = temp;
}

// Insert at position (1-based)
void insertAtPos(Node* &head, int data, int pos) {
    if (pos <= 1) {
        insertAtBeg(head, data);
        return;
    }

    Node* newnode = new Node();
    newnode->data = data;
    newnode->next = NULL;
    newnode->prev = NULL;

    Node* temp = head;
    int count = 1;

    while (temp != NULL && count < pos - 1) {
        temp = temp->next;
        count++;
    }

    // If reached end → insert at last
    if (temp == NULL || temp->next == NULL) {
        insertAtEnd(head, data);
        return;
    }

    newnode->next = temp->next;
    newnode->prev = temp;
    temp->next->prev = newnode;
    temp->next = newnode;
}

// Delete node at position
void deleteAtPos(Node* &head, int pos) {
    if (head == NULL || pos <= 0)
        return;

    Node* temp = head;

    if (pos == 1) {
        head = head->next;
        if (head != NULL)
            head->prev = NULL;
        delete temp;
        return;
    }

    int count = 1;
    while (temp != NULL && count < pos) {
        temp = temp->next;
        count++;
    }

    if (temp == NULL)
        return;

    if (temp->next != NULL)
        temp->next->prev = temp->prev;

    if (temp->prev != NULL)
        temp->prev->next = temp->next;

    delete temp;
}

// Traverse forward
void traverseForward(Node* head) {
    Node* temp = head;
    cout << "Forward: ";
    while (temp != NULL) {
        cout << temp->data << " ";
        temp = temp->next;
    }
    cout << endl;
}

// Traverse backward
void traverseBackward(Node* head) {
    if (head == NULL) return;

    Node* temp = head;
    while (temp->next != NULL)
        temp = temp->next;

    cout << "Backward: ";
    while (temp != NULL) {
        cout << temp->data << " ";
        temp = temp->prev;
    }
    cout << endl;
}

int main() {
    Node* head = NULL;

    insertAtBeg(head, 10);
    insertAtBeg(head, 5);
    insertAtEnd(head, 20);
    insertAtPos(head, 15, 3);

    traverseForward(head);
    traverseBackward(head);

    deleteAtPos(head, 2);

    traverseForward(head);
    traverseBackward(head);

    return 0;
}