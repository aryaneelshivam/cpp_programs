// Online C++ compiler to run C++ program online
#include <iostream>
using namespace std;

void sortarray(int arr[]){
    for(int i = 0; i < 5; i++){
        int smallestindex = i;
        for(int j = i + 1; j < 5; j++){
            if(arr[j] < arr[i]){
                swap(arr[j], arr[i]);
            }
        }
    }
    
    for(int i = 0; i < 5; i++){
        cout << arr[i];
    }
}

int main() {
    
    int arr[5] = {3,4,6,1,2};
    cout << "Original Array: ";
    for(int i = 0; i < 5; i++){
        cout << arr[i];
    }
    cout << endl;
    cout << "Sorted Array: ";
    sortarray(arr);
}