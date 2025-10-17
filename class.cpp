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

    // void set_name(string name){ 
    //     this->name = name;
    // }
    // void set_gender(string gender){
    //     this->gender = gender;
    // }
    // void set_hair_color(string hair_color){
    //     this->hair_color = hair_color;
    // }
    // void set_age(int age){
    //     this->age = age;
    // }
    // void set_height(int height){
    //     this->height = height;
    // }
    // void set_weight(int weight){
    //     this->weight = weight;
    // }
    // void set_strength(int strength){
    //     this->strength = strength;
    // }
    // void set_intelligence(int intelligence){
    //     this->intelligence = intelligence;
    // }
    // void set_wisdom(int wisdom){
    //     this->wisdom = wisdom;
    // }
    // void set_charisma(int charisma){
    //     this->charisma = charisma;
    // }
    // void set_luck(int luck){
    //     this->luck = luck;
    // }
    // void set_constitution(int constitution){
    //     this->constitution = constitution;
    // }
    // void set_dexterity(int dexterity){
    //     this->dexterity = dexterity;
    // } 

    public: // constructor is used to initialize the variables of the class
    character(string name, string gender, string hair_color, int age, int height, int weight, int strength, int intelligence, int wisdom, int charisma, int luck, int constitution, int dexterity){
        name = name;
        gender = gender;
        hair_color = hair_color;
        age = age;
        height = height;
        weight = weight;
        strength = strength;
        intelligence = intelligence;
        wisdom = wisdom;
        charisma = charisma;
        luck = luck;
        constitution = constitution;
        dexterity = dexterity;
    }
 
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


