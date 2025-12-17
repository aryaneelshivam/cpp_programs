#include <iostream>
using namespace std;

class base{
    public:
    virtual ~base(){ // if we dont add virtual then only base class will get destroyed
        cout << "Base class destructor" << endl;
    }
};

class derived : public base{
    public:
    ~derived(){
        cout << "Derived class destructor" << endl;
    }
};

int main(){
    base* b = new derived();
    delete b;
    return 0;
}