// check is a array is a palindrome using dequeue
#include <iostream>
#include <deque>
#include <vector>
using namespace std;

int main(){
    vector<int> arr = {1, 2, 3, 2, 1};
    deque<int> dq;
    for(int i = 0; i < arr.size(); i++){ 
        dq.push_back(arr[i]);
    }
    while(dq.size() > 1){
        if(dq.front() != dq.back()){
            cout << "Not a palindrome" << endl;
            return 0;
        } else {
            dq.pop_front();
            dq.pop_back();
        }
    }
    cout << "Palindrome" << endl;
    return 0;
}
