#include <iostream>
#include <vector>
using namespace std;


void merge(vector<int>&arr, int i){
    vector<int> temp; 
    int mid = arr.size() / 2;
    int j = mid;
    while (i <= mid && j < arr.size()) {
        if (arr[i] < arr[j]) {
            temp.push_back(arr[i]);
            i++;
        } else {
            temp.push_back(arr[j]);
            j++;
        }
    }
    
    while (i < mid) {
        temp.push_back(arr[i]);
        i++;
    }
    
    while (j < arr.size()) {
        temp.push_back(arr[j]);
        j++;
    }

    for (int k = 0; k < arr.size(); k++) {
        arr[k] = temp[k];
    }
}

int main() {
    vector<int> arr = {1, 5, 6, 9, 2, 3, 4, 7};
    merge(arr, 0);
    for (int k = 0; k < arr.size(); k++) {
        cout << arr[k] << " ";
    }
    cout << endl;
    return 0;
}