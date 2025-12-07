#include <iostream>
#include <queue>
using namespace std;

int main(){
    deque<int> dq;
    dq.push_front(1);
    dq.push_front(2);
    dq.push_front(3);
    dq.push_front(4);
    dq.push_front(5);
    cout << dq.front() << endl;
    cout << dq.back() << endl;
    dq.pop_front();
    dq.pop_back();
    cout << dq.front() << endl;
    cout << dq.back() << endl;
    return 0;
}