#include <iostream>
using namespace std;


class vehicle{
    public:
    int wheels;

};

int main(){
    int vehicle::*ptr = &vehicle::wheels;
    vehicle car;
    car.wheels = 22;
    cout << car.*ptr;
    return 0;
}

