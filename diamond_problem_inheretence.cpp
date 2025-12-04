// diamond problem in multiple inheritence
#include <iostream>
using namespace std;

class A{
    public:
    int a;
};

class B: virtual public A{ //permanant fix for this problem using virtual keyword

};

class C: virtual public A{

};

class D: public B, public C{

};

int main(){
    D d;
    //cout << d.a << endl;
    cout << d.B::a << endl; //temporary fix for this problem
    cout << d.C::a << endl;
}