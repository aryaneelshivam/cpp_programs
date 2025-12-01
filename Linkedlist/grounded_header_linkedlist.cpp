#include <iostream>
using namespace std;

struct Node {
    int data;
    Node* next;
};

// Utility: create a node
Node* createNode(int data) {
    Node* n = new Node();
    n->data = data;
    n->next = nullptr;
    return n;
}

// Insert at beginning
void insertAtBeg(Node* &head, int data) {
    Node* newnode = createNode(data);
    if (head == nullptr) {
        // first node points to itself
        newnode->next = newnode;
        head = newnode;
        return;
    }
    // find last node to maintain circular link
    Node* tail = head;
    while (tail->next != head) tail = tail->next;
    newnode->next = head;
    tail->next = newnode;
    head = newnode;
}

// Insert at end
void insertAtEnd(Node* &head, int data) {
    Node* newnode = createNode(data);
    if (head == nullptr) {
        newnode->next = newnode;
        head = newnode;
        return;
    }
    Node* tail = head;
    while (tail->next != head) tail = tail->next;
    tail->next = newnode;
    newnode->next = head;
}

// Insert at position (1-based). If pos <=1 => insert at beginning. If pos > length => insert at end.
void insertAtPos(Node* &head, int data, int pos) {
    if (pos <= 1 || head == nullptr) {
        insertAtBeg(head, data);
        return;
    }
    Node* cur = head;
    int count = 1;
    // move to node at position (pos-1) or to last node
    while (count < pos - 1 && cur->next != head) {
        cur = cur->next;
        ++count;
    }
    // now cur is node after which we insert
    // if cur->next == head and count < pos-1 => inserting at end
    Node* newnode = createNode(data);
    newnode->next = cur->next;
    cur->next = newnode;
}

// Delete node at position (1-based). Returns true if deletion happened.
bool deleteAtPos(Node* &head, int pos) {
    if (head == nullptr || pos <= 0) return false;
    // deleting head (pos == 1)
    if (pos == 1) {
        if (head->next == head) {
            // only one node
            delete head;
            head = nullptr;
            return true;
        }
        // find tail to fix link
        Node* tail = head;
        while (tail->next != head) tail = tail->next;
        Node* toDelete = head;
        head = head->next;
        tail->next = head;
        delete toDelete;
        return true;
    }
    // deleting non-head
    Node* prev = head;
    int count = 1;
    while (count < pos - 1 && prev->next != head) {
        prev = prev->next;
        ++count;
    }
    // prev should be node at pos-1
    if (prev->next == head) return false; // pos out of range
    Node* toDelete = prev->next;
    prev->next = toDelete->next;
    delete toDelete;
    return true;
}

// Delete first node with matching value. Returns true if deleted.
bool deleteByValue(Node* &head, int value) {
    if (head == nullptr) return false;
    // check head separately
    if (head->data == value) {
        return deleteAtPos(head, 1);
    }
    Node* prev = head;
    Node* cur = head->next;
    while (cur != head) {
        if (cur->data == value) {
            prev->next = cur->next;
            delete cur;
            return true;
        }
        prev = cur;
        cur = cur->next;
    }
    return false; // not found
}

// Traverse forward and print
void traverse(Node* head) {
    if (head == nullptr) {
        cout << "List is empty\n";
        return;
    }
    Node* cur = head;
    cout << "Circular list: ";
    do {
        cout << cur->data << " ";
        cur = cur->next;
    } while (cur != head);
    cout << "\n";
}

// Helper: length (optional)
int length(Node* head) {
    if (head == nullptr) return 0;
    int cnt = 0;
    Node* cur = head;
    do {
        ++cnt;
        cur = cur->next;
    } while (cur != head);
    return cnt;
}

// Example usage
int main() {
    Node* head = nullptr;

    insertAtEnd(head, 10);
    insertAtBeg(head, 5);
    insertAtEnd(head, 20);
    insertAtPos(head, 15, 3); // 5 10 15 20
    traverse(head);

    cout << "Length: " << length(head) << "\n";

    deleteAtPos(head, 1); // delete head (5)
    traverse(head);

    bool rem = deleteByValue(head, 15);
    cout << "Deleted 15? " << (rem ? "Yes" : "No") << "\n";
    traverse(head);

    // delete remaining nodes
    deleteAtPos(head, 1);
    deleteAtPos(head, 1);
    traverse(head); // empty

    return 0;
}