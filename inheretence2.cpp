#include <iostream>
using namespace std;

class base{
    public:
    int x;
    protected:
    int y;
    private:
    int z; // private members are not accessible in derived class
};

class derived: public base{
    public:
    void display(){
        cout << x << " " << y << endl; //public and protected members are accessible in derived class
    }
};
