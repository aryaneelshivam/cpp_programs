#include <iostream>
#include <vector>
using namespace std;

int main(){
    vector<int> arr1 = {1,2,3,4};
    vector<int> arr2 = {5,6,7,8};
    vector<int> arr3;
    for (int i = 0; i < arr1.size(); i++){
        arr3.push_back(arr1[i]);
    }
    for (int i = 0; i < arr2.size(); i++){
        arr3.push_back(arr2[i]);
    }
    sort(arr3.begin(), arr3.end());
    for (int i = 0; i < arr3.size(); i++){
        cout << arr3[i] << " ";
    }
    return 0;
}