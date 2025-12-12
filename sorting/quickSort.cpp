//quick sort algorithm
#include<iostream>
#include<vector>
using namespace std;

void quickSort(vector<int>& arr, int s, int e){
    if(s < e){
        int i = s;
        int j = s;
        int pivot = e;
        while(j < pivot){
            if(arr[j] < arr[pivot]){
                swap(arr[i], arr[j]);
                j++;
                i++;
            }
            else{
                j++;
            }
        }   
        swap(arr[i], arr[pivot]);
        quickSort(arr, s, i-1);
        quickSort(arr, i+1, e);
    }
}

int main(){
    vector<int> arr = {64, 34, 25, 12, 22};
    quickSort(arr, 0, 4);
    for(int i = 0; i < 5; i++){
        cout<<arr[i]<<" ";
    }
    return 0;
}