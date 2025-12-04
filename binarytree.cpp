#include <iostream>
using namespace std;

//traversal types:
// BFS; breadth First Search 
// DFS; depth First Search 

struct TreeNode{
    int val;
    TreeNode* left;
    TreeNode* right;
};

void bfs(TreeNode* root){
    if(root == NULL){
        return;
    }
    queue<TreeNode*> q;
    q.push(root); //push root node in queue
    while(!q.empty()){
        TreeNode* node = q.front(); //get front node
        q.pop(); //pop front node
        cout << node->val << " "; // print front node
        if(node->left){
            q.push(node->left);
        }
        if(node->right){
            q.push(node->right);
        }
    }
}