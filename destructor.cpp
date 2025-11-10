#include <iostream>
using namespace std;

class student{
    string name;
    int marks;
    public:
    student(string name, int marks){
        this->name = name;
        this->marks = marks;
    }

    ~student(){    //whenevr
        cout << "Destructor called for" << name << endl; //destructor is called in reverse order of constructor
    }

    void showdetails(){
        cout << "Name: " << name << endl;
        cout << "Marks: " << marks << endl;
    }


};

class properties{
    int* arr = new int[10];
    public:
    properties(){
        arr = new int[10];
    }
    ~properties(){
        delete[] arr;  //when u delete array u use [] brackets to delete the array
    }
    void showarray(){
        for(int i = 0; i < 10; i++){
            cout << arr[i] << " ";
        }
        cout << endl;
    }

};


int main(){
    student s1("John", 100);
    student s2("Jane", 90);
    student s3("Jim", 80);
    s1.showdetails();
    s2.showdetails();
    s3.showdetails();

    return 0;
}