#include <iostream>
using namespace std;

//1. forgetting to delete dynamically allocated memory

void leak(){
    int* p = new int;;
}

void no_leak(){
    int* p = new int;
    delete p;
}

//2. missing virtual destructor
class base{
    public:
    virtual ~base(){ //always add virtual to base class destructor
        cout << "Base class destructor" << endl;
    }
};

class derived : public base{
    int* data = new int(5);
    public:
    ~derived(){
        delete data;
        cout << "Derived class destructor" << endl;
    }
};

int main(){
    base* b = new derived();
    delete b;
    return 0;
}