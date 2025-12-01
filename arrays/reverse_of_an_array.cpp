//reverse of an array
#include <iostream>
using namespace std;

int main() {
    int arr[5] = {1,2,3,4,5};
    int start = 0;
    int n = sizeof(arr) / sizeof(int);
    int end = n - 1;
    bool iseven;

    if(n % 2 == 0){
        iseven = false;
    } else {
        iseven = true;
    }
    

    if(iseven){  // if even number of elements in the array, then end swap when start becomes greater than end;
        while(start < end){
            swap(arr[start], arr[end]);
            start++;
            end--;
        }
    } else { // if odd number of elements in the array, then end swap when start becomes equal to end;
        while(start == end){ 
            swap(arr[start], arr[end]);
            start++;
            end--;
        }
    }
    
    cout << "swapped array: " << endl;
    for(int i = 0; i < n; i++){
        cout << arr[i];
    }
    cout << endl;
    
    return 0;
}