#include <iostream>
using namespace std;

int main() {
int arr[] = {5, 2, 4, 6, 1, 3};

    // Insertion sort algorithm
    for(int i=1; i<6; i++) {
        int key = arr[i];
        int j = i-1;
        // Move elements greater than key forward
        while(j >= 0 && arr[j] > key) {
            arr[j+1] = arr[j];
            j--;
        }
        arr[j+1] = key;
    }

    cout << "Sorted array: ";
    for(int i=0; i<6; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
    return 0;
}
