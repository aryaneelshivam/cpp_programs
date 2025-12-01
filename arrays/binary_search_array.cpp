//bnary search in array
#include <iostream>
using namespace std;


bool binarysearch(int arr[], int search_term){
    int start = 0;
    int end = 9;
    int mid = (start + end) / 2;
    while(start <= end){
        if(arr[mid] == search_term){
            return true;
        }
        else if(arr[mid] < search_term){
            start = mid + 1;
        }
        else{
            end = mid - 1;
        }
        mid = (start + end) / 2;
    }
    return false;
}

int main(){
    int arr[10] = {1,2,3,4,5,6,7,8,9,10};
    int search_term = 4;
    cout << binarysearch(arr, search_term) << endl;
}