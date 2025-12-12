#include <iostream>
using namespace std;

class Node {
public:
  int data;
  Node *left;
  Node *right;
  Node(int data) {
    this->data = data;
    this->left = NULL;
    this->right = NULL;
  }
};

/*
 Node* addNode(Node* root, int data){
    if(root == NULL){
        return new Node(data);
    }
    if(root->left == NULL){
        root->left = new Node(data);
    }
    else if(root->right == NULL){
        root->right = new Node(data);
    }
    return root;
}
 */

void preorder(Node *node) { // root, left, right
  if (node == NULL) {
    return;
  }
  cout << node->data << " ";
  preorder(node->left);
  preorder(node->right);
}

void inorder(Node *node) { // left, root, right
  if (node == NULL) {
    return;
  }
  inorder(node->left);
  cout << node->data << " ";
  inorder(node->right);
}

void postorder(Node *node) { // left, right, root
  if (node == NULL) {
    return;
  }
  postorder(node->left);
  postorder(node->right);
  cout << node->data << " ";
}

int main() {
  Node *root = new Node(1);
  Node *leftnode = new Node(2);
  Node *rightnode = new Node(3);
  root->left = leftnode;
  root->right = rightnode;
  leftnode->left = new Node(4);
  leftnode->right = new Node(5);

  cout << "Preorder Traversal: ";
  preorder(root);
  cout << endl;

  cout << "Inorder Traversal: ";
  inorder(root);
  cout << endl;

  cout << "Postorder Traversal: ";
  postorder(root);
  cout << endl;

  return 0;
}
