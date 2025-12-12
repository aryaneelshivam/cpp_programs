//search for target in binary search tree
#include<iostream>
using namespace std;
class Node{
    public:
    int data;
    Node* left;
    Node* right;
    Node(int data){
        this->data = data;
        this->left = NULL;
        this->right = NULL;
    }
};

bool search(Node* root, int target){
    if(root == NULL) return false;
    if(root->data == target) return true;
    if(target > root->data){
        return search(root->right, target);
    }
    return search(root->left, target);
}

int main(){
    Node* root = new Node(1);
    root->left = new Node(2);
    root->right = new Node(3);
    root->left->left = new Node(4);
    root->left->right = new Node(5);
    root->right->left = new Node(6);
    root->right->right = new Node(7);
    int target;
    cin>>target;
    
    if(search(root, target)) cout<<"Target found";
    else cout<<"Target not found";
    return 0;
}
