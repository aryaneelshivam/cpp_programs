//insertiom in BST
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

Node* insert(Node* root, int data){
    if(root == NULL){
        root = new Node(data);
        return root;
    } else{
        if(data < root->data){
            root->left = insert(root->left, data);
        } else{
            root->right = insert(root->right, data);
        }
        return root;
    }
}
int main(){
    Node* root = NULL;
    root = insert(root, 10);
    insert(root, 5);
    insert(root, 15);
    insert(root, 3);
    insert(root, 7);
    insert(root, 12);
    insert(root, 18);
    return 0;
}
