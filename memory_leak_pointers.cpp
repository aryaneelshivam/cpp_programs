#include <iostream>
using namespace std;

void leak(){
    int* p = new int(20);
    p = new int(100);
    delete p; //it will only delete the 100 value pointer; leading to 20 memory leak.
}

//fix

void no_leak(){
    int* q = new int(100);
    delete q; //always delete pointer before reassigning value
    q = new int(200);
    delete q;
}

int main(){
    leak();
    no_leak();
    return 0;
}