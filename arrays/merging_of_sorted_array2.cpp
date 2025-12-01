//merging of sorted array using two pointer approach
#include <iostream>
#include <vector>
using namespace std;

int main(){
    vector<int> arr1 = {1,2,3,4};
    vector<int> arr2 = {5,6,7,8};
    vector<int> arr3;
    int i = 0;
    int j = 0;
    while (i < arr1.size() && j < arr2.size()){
        if (arr1[i] < arr2[j]){
            arr3.push_back(arr1[i]);
            i++;
        }
        else{
            arr3.push_back(arr2[j]);
            j++;
        }
    }
    while (i < arr1.size()){
        arr3.push_back(arr1[i]);
        i++;
    }
    while (j < arr2.size()){
        arr3.push_back(arr2[j]);
        j++;
    }
    for (int i = 0; i < arr3.size(); i++){
        cout << arr3[i] << " ";
    }
    return 0;
}