#include <iostream>
using namespace std;


//deep copy; when t1 is destroyed the value of t2 will not be destroyed because t2 is a deep copy of t1
class test{
    int *marks;
    public:
    test(int m){
        marks = new int; //allocating memory to the marks pointer
        *marks = m;
    }

    test(const test &t){
        marks = new int; //allocating new memory to the marks pointer unlike using same memory address like shallow copy
        *marks = *t.marks;
    }

    ~test(){
        delete marks;
    }

    void set_marks(int m){
        *marks = m;
    }

    void get_marks(){
        cout << "marks are: " << *marks << endl;
    }
};

int main(){
    test t1(10);
    test t2 = t1;
    t1.set_marks(20);
    t1.get_marks();
    t2.get_marks();
    return 0; //t2 is a deep copy of t1 so it will have the same value of marks as t1
}
