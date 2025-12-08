#include <iostream>
#include <queue>
using namespace std;

void printMinPriorityQueue(priority_queue<int, vector<int>, greater<int>> pq){
    while (!pq.empty()){
        cout << pq.top() << " ";
        pq.pop();
    }
    cout << endl;
}

int main(){
    priority_queue<int, vector<int>, greater<int>> pq;
    pq.push(1);
    pq.push(2);
    pq.push(3);
    pq.push(4);
    printMinPriorityQueue(pq);
    return 0;
}
