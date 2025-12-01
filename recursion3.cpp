#include <iostream>
#include <vector>
using namespace std;

bool issorted(vector<int> arr, int i){
    if(arr[i] == arr.size() - 1){
        return true;
    }

    if(arr[i] > arr[i + 1]){
        return false;
    } else {
        return issorted(arr, i + 1);
    }
}

int main(){
    int i;
    cin >> i;
    vector<int> arr = {1,6,3,4,5};
    cout << issorted(arr, i);
}