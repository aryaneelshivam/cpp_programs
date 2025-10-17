#include <iostream>
using namespace std;

int main() {
    int num;
    cin >> num;

    if (num % 9 == 0) {
        cout << num << " is divisible by 9." << endl;
        if (num % 2 == 0) {
            cout << num << " is even." << endl;
        } else {
            cout << num << " is odd." << endl;
        }
    } else {
        cout << num << " is not divisible by 9." << endl;
    }
    return 0;
}