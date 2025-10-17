// Online C++ compiler to run C++ program online
#include <iostream>
using namespace std;
#define PI 3.14; //Const using #define

int main() {
    const int x = 20; //Const using const
    
    cout << "PI value is: " << PI;
    cout << "\nConst x value is: " << x;
    // int x = 30; cannot redeclare value to const variable

    return 0;
}

