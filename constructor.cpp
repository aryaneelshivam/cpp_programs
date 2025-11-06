//write a car class having a default constructor which will set the speend of the car to 0
#include <iostream>
using namespace std;

class car{
    int speed;

    public:
    car(){  //default constructor without parameters 
        speed  = 0;
    }

    void display(){
        cout << "speed is:" << speed << endl;
    }
};


class student{  // paramaterized constructor with parameters
    string name;
    int age;
    int marks;
    public:
    student(string name, int age, int marks ){
        this->name = name;
        this->age = age;
        this->marks = marks;
    }
    void display(){
        cout << "name is:" << name << "age is:" << age << "marks is:" << marks << endl;
    }

};


int main(){
    car c1;
    c1.display();

    student s1("Aryaneel", 20, 100); // assigning values to parameters of a constructor 
    s1.display();

    return 0;


}

