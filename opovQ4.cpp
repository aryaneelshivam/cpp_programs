#include <iostream>
#include <vector>
using namespace std;

class student{
    int marks;
    public:
    student(int marks){
        this->marks = marks;
    }

    int operator>>(int x){
        return marks += x;
    }

    int operator<<(int x){
        return marks -= x;
    }
    void show(){
        cout << "Marks: " << marks << endl;
    }

};

int main(){
    student s1(100);
    s1 >> 10;
    s1.show();
    s1 << 5;
    s1.show();
    return 0;
}