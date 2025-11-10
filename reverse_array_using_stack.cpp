//reverse of an array using stack 
#include <iostream>
#include <stack>
using namespace std;

void reverse(int arr[], int n){
    stack<int> s;
    for(int i = 0; i < n; i++){ //pushes all elements of array into stack
        s.push(arr[i]); //all array elements are pushed into stack
    }
    for(int i = 0; i < n; i++){ //pops all elements of stack into array
        arr[i] = s.top(); //updating the array with the top element of stack
        s.pop();
    }
}

int main(){
    int arr[] = {1, 2, 3, 4, 5};
    int n = sizeof(arr) / sizeof(arr[0]);

    //actual order
    cout << "Actual order: ";
    for(int i = 0; i < n; i++){
        cout << arr[i] << " ";
    }
    cout << endl;

    //reverse order
    cout << "Reverse order: ";
    reverse(arr, n);
    for(int i = 0; i < n; i++){
        cout << arr[i] << " ";
    }
    return 0;
}
