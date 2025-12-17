#include<iostream>
using namespace std;

// Function to reverse a specific portion of the array
void reverse(int arr[], int start, int end){
    while(start < end){
        swap(arr[start], arr[end]);
        start++;
        end--;
    }
}

void rotateArray(int arr[], int n, int k){
    k = k % n;

    // 1. Reverse the whole array (0 to n-1)
    reverse(arr, 0, n - 1);
    
    // 2. Reverse the first k elements (0 to k-1)
    reverse(arr, 0, k - 1);
    
    // 3. Reverse the remaining elements (k to n-1)
    reverse(arr, k, n - 1);
}

int main(){
    int arr[5] = {1, 2, 3, 4, 5};
    int k = 2;
    int n = 5;
    
    rotateArray(arr, n, k);
    
    for(int i = 0; i < n; i++){
        cout << arr[i] << " ";
    }
    
    return 0;
}
