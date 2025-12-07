// finding target element using recursion in an array
#include <iostream>
using namespace std;

int findTarget(int arr[], int n, int target){
    if(n == 0){
        return -1;
    }
    if(arr[0] == target){
        return 0;
    }
    int i = findTarget(arr+1, n-1, target);
    if(i == -1){
        return -1;
    }
    return i+1;
}

//printing array using recursion
void printarray(int arr[], int n, int idx = 0){
    if(idx == n){
        return;
    } else {
        // printarray(arr, n, idx+1); when recursive call is called first; it will print in reverse
        cout << arr[idx] << " ";
        printarray(arr, n, idx+1); //when recursive call is called last; it will print in normal order
    }
}

int sumarray(int arr[], int n, int idx = 0){
    if(n == 0){
        return 0;
    } else {
        return arr[idx] + sumarray(arr, n-1, idx+1);
    }
}

int firstoccurence(int arr[], int n, int target, int idx){ //finding the first occurence of a target
    if(idx >= n){
        return -1;
    }
    if(arr[idx] == target){
        return idx;
    }
    return firstoccurence(arr, n, target, idx+1);
}


int main(){
    int arr[] = {1,2,3,4,5,6,7,8,9,10};
    int n = sizeof(arr)/sizeof(arr[0]);
    int target = 5;
    cout << findTarget(arr, n, target) << endl;
    printarray(arr, n);
    cout << endl;
    cout << sumarray(arr, n) << endl;
    cout << firstoccurence(arr, n, target, 0) << endl;
    return 0;
}
