// merge sort algorithm using divide and conquer approach; recursion
#include <iostream>
#include <vector>
using namespace std;

void merge(vector<int>&arr, int s, int e){
    int mid = (s+e)/2;
    int i = s;
    int j = mid+1;
    vector<int>temp;
    while (i <= mid && j <= e){
        if (arr[i] < arr[j]){
            temp.push_back(arr[i]);
            i++;
        }
        else{
            temp.push_back(arr[j]);
            j++;
        }
    }
    while (i <= mid){
        temp.push_back(arr[i]);
        i++;
    }
    while (j <= e){
        temp.push_back(arr[j]);
        j++;
    }
    for (int i = s; i <= e; i++){
        arr[i] = temp[i-s];
    }
}

void mergesort(vector<int>&arr, int s, int e){
    if(s == e){
        return;
    } 
    int mid = (s+e)/2;
    mergesort(arr, s, mid);
    mergesort(arr, mid+1, e);

    merge(arr, s, e);
}

int main(){
    vector<int>arr = {1, 5, 6, 9, 2, 3, 4, 7};
    mergesort(arr, 0, arr.size()-1);
    for (int i = 0; i < arr.size(); i++){
        cout << arr[i] << " ";
    }
    return 0;
}
