#include <iostream>
#include <queue>
using namespace std;

void printMaxPriorityQueue(priority_queue<int> pq){
    while (!pq.empty()){
        cout << pq.top() << " ";
        pq.pop();
    }
    cout << endl;
}

int main(){
    priority_queue<int> pq;
    pq.push(1);
    pq.push(2);
    pq.push(3);
    pq.push(4);
    printMaxPriorityQueue(pq);
    return 0;
}