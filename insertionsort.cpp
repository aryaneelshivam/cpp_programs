#include <iostream>
using namespace std;

int main() {
    int n;
    cout << "Enter number of elements: ";
    cin >> n;
    int arr[n];
    cout << "Enter elements:" << endl;
    for(int i=0; i<n; i++) {
        cin >> arr[i];
    }

    // Insertion sort algorithm
    for(int i=1; i<n; i++) {
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
    for(int i=0; i<n; i++) {
        cout << arr[i] << " ";
    }
    cout << endl;
    return 0;
}
