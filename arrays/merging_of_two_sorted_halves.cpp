#include <iostream>
#include <vector>
using namespace std;


void merge(vector<int>&arr, int i){
    vector<int> temp; 
    int n = arr.size();
    int mid = n / 2;
    int j = mid;
    while (i <= mid && j < n) {
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
    
    while (j < n) {
        temp.push_back(arr[j]);
        j++;
    }

    for (int k = 0; k < n; k++) {
        arr[k] = temp[k];
    }

    for (int k = 0; k < n; k++) {
        cout << arr[k] << " ";
    }
    cout << endl;

}

int main() {
    vector<int> arr = {1, 5, 6, 9, 2, 3, 4, 7};
    merge(arr, 0); 

    return 0;
}