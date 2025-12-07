// find top k elements from a priority queue
// print the top k elements from a priority queue
#include <iostream>
#include <queue>
using namespace std;   

void printTopKElements(priority_queue<int> pq, int k){
    for(int i = 0; i < k; i++){
        cout << pq.top() << " ";
        pq.pop();
    }
}

int main(){
    priority_queue<int> pq;
    pq.push(1);
    pq.push(2);
    pq.push(3);
    pq.push(4);
    printTopKElements(pq, 2);
    return 0;
}