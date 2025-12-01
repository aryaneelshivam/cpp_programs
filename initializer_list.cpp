// write down linked list node structure using initializer list
#include <iostream>
using namespace std;

class Node{
    int data;
    Node* next;
    const int price;
    Node(int d, int p) : data(d), next(nullptr), price(p){}
};

