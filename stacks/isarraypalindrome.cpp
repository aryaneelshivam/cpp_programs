//check if an array is palindrome using stack
#include <iostream>
#include <stack>
using namespace std;

bool ispalindrome(int arr[], int n){
    stack<int> s;
    for(int i = 0; i < n; i++){
        s.push(arr[i]); //pushing elements of an array to the stack
    }
    for(int i = 0; i < n; i++){
        if(arr[i] != s.top()){
            return false;
        }
        s.pop();
    }
    return true;
    
};

int main(){
    int arr[] = {1, 2, 3, 2, 1};
    int n = sizeof(arr) / sizeof(arr[0]);
    if(ispalindrome(arr, n)){
        cout << "Array is palindrome" << endl;
    } else {
        cout << "Array is not palindrome" << endl;
    }
    return 0;
}