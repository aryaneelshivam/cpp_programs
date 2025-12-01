// write a vector class having x & y components; overload * operator to calculate dot product if two vector 
#include <iostream>
#include <vector>
using namespace std;

class Vector{
    int x; 
    int y;
    public:

    //Vector(int x, int y): x(x), y(y) {}
    Vector(int x, int y){
        this->x = x;
        this->y = y;
    }


    int operator*(Vector v){
        return x * v.x + y * v.y;
    }

    void display(){
        cout << "Vector: " << x << "i + " << y << "j" << endl;
    }
};

int main(){
    Vector v1(1, 2);
    Vector v2(3, 4);
    v1.display();
    v2.display();
    cout << "Dot product of v1 and v2 is: " << v1 * v2 << endl;
    return 0;
}