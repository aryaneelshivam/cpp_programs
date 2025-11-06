#include <iostream>
using namespace std;


//shallow copy; when t1 is destroyed the value of t2 will also be destroyed because t2 is a shallow copy of t1
class test{
    int *marks; //pointer to an integer
    public:
    test(int m){
        marks = new int; //allocating memory to the marks pointer
        *marks = m; //assigning the value of m to the marks pointer

    }

    test(const test &t){
        this->marks  = t.marks; //copying the marks pointer of t to the marks pointer of the current object
    }

    ~test(){
        delete marks; //deallocating the memory of the marks pointer
    }

    void set_marks(int m){ //setter function to set the value of marks
        *marks = m; //assigning the value of m to the marks pointer
    }

    void get_marks(){ //getter function to get the value of marks
        cout << "marks are: " << *marks << endl;
    }

};

int main(){
    test t1(10);
    test t2 = t1;
    t1.set_marks(20);
    t1.get_marks();
    t2.get_marks(); //t2 is a shallow copy of t1 so it will have the same value of marks as t1
    return 0;
}