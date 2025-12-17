//operator overloading 
#include<iostream>
using namespace std;

class point{
    public:
    int x;
    int y;
    point(int x, int y){
        this->x = x;
        this->y = y;
    }
    point operator+(point p){
        point p1(x + p.x, y + p.y);
        return p1;
    }
    void display(){
        cout << x << " " << y << endl;
    }
};

int main(){
    point p1(1, 2);
    point p2(3, 4);
    point p3 = p1 + p2; //cannot use + directly because it works only on primitive data types; hence + operator overloading.
    p3.display();
    return 0;
}