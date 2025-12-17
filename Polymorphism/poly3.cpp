#include <iostream>
using namespace std;

class base{
    public:
    virtual void show(){ //virtual keyword makes it a runtime polymorphism
        cout << "Base class" << endl;
    }
};

class derived : public base{
    public:
    void show(){
        cout << "Derived class" << endl;
    }
};

int main(){
    base* b = new derived(); //first pointer b points to base 
    derived* d = new derived(); //then pointer d points to derived
    base* c = new base();

    b->show(); //hence b points to base class show() function
    d->show(); //hence d points to derived class show() function
    c->show(); //hence c points to base class show() function
    
    return 0;
}