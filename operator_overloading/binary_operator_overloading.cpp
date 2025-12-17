//binary operator overloading
#include <iostream>
using namespace std;

class Complex{ 
    int real;
    int img;
    public:
    Complex(int r, int i) : real(r), img(i){}
    void display(){
        cout << real << " + " << img << "i" << endl; // displays the complex number
    }

    Complex operator+(Complex c){
        int i = img + c.img;
        int r = real + c.real;
        Complex temp(r, i);
        return temp;
    }

     bool operator==(Complex c){
        if(real == c.real && img == c.img){
            return true;
        }
        else{
            return false;
        }
    }

};

int main(){  
    Complex c1 (2,3);
    Complex c2 (4,5);
    Complex c3 = c1 + c2;
    c3.display();
    bool val = c1 == c2;
    cout << "The two complex numbers are equal: " << val << endl;
    return 0;
}