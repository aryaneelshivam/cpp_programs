// more optimized solution of Q4.
#include <iostream>
using namespace std;

int power(int x, int n) {
    if (n == 0 || x == 1) {
        return 1;
    }

    int halfPower = power(x, n / 2);

    if (n % 2 == 0) {
        return halfPower * halfPower;
    } 
    else {
        return x * halfPower * halfPower;
    }
}

int main() {
    int x = 2;
    int n = 3;
    cout << power(x, n);
    return 0;
}