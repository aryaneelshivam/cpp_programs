//write a car class having a default constructor which will set the speend of the car to 0
#include <iostream>
using namespace std;

class car{
    int speed;
    //int gear;

    public:
    car(){  //default constructor without parameters 
        speed  = 0;
    }

    car(int speed){ //constructor overloading; same constructor name with different parameters
        this->speed = speed;
    }

    /*car(int speed = 100, int gear = 5){ // conrtructor with default arguments
        this->speed = speed;
        this->gear = gear;
    }
        */

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

class vehicle{
    public:
    int wheels;
    int engine;

    vehicle(){

    }

    vehicle(int wheels, int engine ){
        this->wheels = wheels;
        this->engine = engine;
    }


    void display(){
        cout << "wheels are:" << wheels << "engine is:" << engine << endl;
    }
};

//copy constructor syntax to access private members of a class
class horse{
    int legs;
    int speed;
    public:
    horse(int legs, int speed){
        this->legs = legs;
        this->speed = speed;
    }

    horse(const horse &h){
        this->legs = h.legs; //copying the values of h to the current object
        this->speed = h.speed; //copying the values of h to the current object
    }

    void display(){
        cout << "legs are:" << legs << "speed is:" << speed << endl;
    }
};


int main(){
    car c1; // default constructor is called
    c1.display();
    car c2(100); // now default constructor is overridden by the constructor with parameters
    c2.display();

    student s1("Aryaneel", 20, 100); // assigning values to parameters of a constructor 
    s1.display();

    vehicle v1(4, 4); 

    vehicle v2;
    v2.wheels = v1.wheels; //copying the values of v1 to v2
    v2.engine = v1.engine; //copying the values of v1 to v2

    v1.display();
    v2.display();

    horse h1(4, 100);  
    horse h2(h1); //copy constructor is called
    h2.display();


    return 0;


}

