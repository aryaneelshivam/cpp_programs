#include <iostream>
using namespace std;

int main() {
    int arr[5] = {1,2,3,4,8};
    int max = arr[0];
    for(int i : arr){
        if(arr[i]>max){
            max = arr[i];
        }
    }
    cout << "max number is: " << max;

    return 0;
}

