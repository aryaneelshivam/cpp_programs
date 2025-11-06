#include <iostream>
using namespace std;

class Circle {
private:
    float radius;
    const float PI = 3.141;
public:
 void setRadius(float radius){
    this->radius = radius;
 }
 void calculateArea(){
    //float perimeter = 2 * PI * radius;
    float area = PI * radius * radius;
    //cout << "Perimeter of circle: " << perimeter << endl;
    cout << "Area of circle: " << area << endl;
 }
};

int main() {
    Circle c;
    c.setRadius(10);
    c.calculateArea();
    return 0;
}

