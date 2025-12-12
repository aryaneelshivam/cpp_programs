//deletion in BST
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

Node* minValNode(Node* node) {
    Node* current = node;
    while (current && current->left != NULL) {
        current = current->left;
    }
    return current;
}

Node* deleteNode(Node* root, int target){
    if(root == NULL) return NULL;
    if(root->data == target){
        if(root->left == NULL && root->right == NULL){
            delete root;
            return NULL;
        }
    }

    //recurse down the tree to first find the node
    if(target < root->data){
        root->left = deleteNode(root->left, target);
    }
    if(target > root->data){
        root->right = deleteNode(root->right, target);
    }

    //node found; root->data == target
    else{
        //case 1. Node with no child or only one child
        if(root->left == NULL){
            Node* child = root->right;
            delete root;
            return child;
        }
        if(root->right == NULL){
            Node* child = root->left;
            delete root;
            return child;
        }

        Node* successor = minValNode(root->right);
        root->data = successor->data;
        root->right = deleteNode(root->right, successor->data);
    }
    return root;
}