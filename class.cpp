#include <iostream>
using namespace std;

class character{ // private class is used to access the variables and functions of the class from inside the class
    string name;
    string gender;
    string hair_color;
    int age;
    int height;
    int weight;
    int strength;
    int intelligence;
    int wisdom;
    int charisma;
    int luck;
    int constitution;
    int dexterity;
};

class Student{ // public class is used to access the variables and functions of the class from outside the class
    public:
    string name;
    int age;
    int roll_no;
};

int main(){ // main function is used to execute the code
    Student s1;
    s1.name = "John";
    s1.age = 20;
    s1.roll_no = 123456;
    cout << s1.name << " " << s1.age << " " << s1.roll_no;
    return 0;
}


