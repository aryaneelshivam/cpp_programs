//array operations
#include <iostream>
using namespace std;

void printArray(int arr[], int n){ //function to print the array
    for(int i = 0; i < n; i++){
        cout << arr[i] << " ";
    }
    cout << endl;
}

void reverseArray(int arr[], int n){ //function to reverse the array
    int start = 0;
    int end = n - 1;
    while(start < end){
        swap(arr[start], arr[end]);
        start++;
        end--;
    }
}

void insertElement(int arr[], int n, int element, int position){
    for(int i = n; i > position; i--){ //shift all elements to the right to make space for the new element
        arr[i] = arr[i-1]; //shift the element to the right
        n++;
    }
    arr[position] = element; //insert the new element at the specified position
}

void deleteElement(int arr[], int n, int position){
    for(int i = position; i < n-1; i++){ //shift all elements to the left to fill the gap left by the deleted element
        arr[i] = arr[i+1]; //shift the element to the left
        n--;
    }
}

void searchElement(int arr[], int n, int element){ //function to search for an element in the array
    for(int i = 0; i < n; i++){
        if(arr[i] == element){
            cout << "Element found at position " << i << endl;
            return;
        }
    }
}

void sortArray(int arr[], int n){ //function to sort the array
    for(int i = 0; i < n-1; i++){
        for(int j = 0; j < n-i-1; j++){
            if(arr[j] > arr[j+1]){
                swap(arr[j], arr[j+1]);
            }
        }
    }
}

void concatenateArrays(int arr1[], int arr2[], int n1, int n2){
    int arr3[n1 + n2];
    for(int i = 0; i < n1; i++){
        arr3[i] = arr1[i];
    }
    for(int i = 0; i < n2; i++){
        arr3[n1 + i] = arr2[i];
    }
}


int main(){
    int arr[5] = {1, 2, 3, 4, 5};
    int arr2[5] = {6, 7, 8, 9, 10};
    int n2 = sizeof(arr2) / sizeof(arr2[0]);
    int n1 = sizeof(arr) / sizeof(arr[0]);
    int n3 = n1 + n2;
    int arr3[n3];
    int n = sizeof(arr) / sizeof(arr[0]);
    cout << "Array: ";
    printArray(arr, n);
    reverseArray(arr, n);
    cout << "Reversed Array: ";
    printArray(arr, n);
    insertElement(arr, n, 6, 2);
    cout << "Array after inserting 6 at position 2: ";
    printArray(arr, n);
    concatenateArrays(arr, arr2, n, n2);
    cout << "Concatenated Array: ";
    printArray(arr3, n1 + n2);
    return 0;
}