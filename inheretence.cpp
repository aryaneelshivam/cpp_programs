#include <iostream>
using namespace std;

class grandparent{
    public:
    void display_grandparent(){
        cout << "Grandparent" << endl;
    }
};

class parent: public grandparent{
    public:
    void display_parent(){
        cout << "Parent" << endl;
    }
};

class child: public parent{
    public:
    void display_child(){
        cout << "Child" << endl;
    }
};

//--------------------------------//

class employee{
    public:
    int id;
    string name;
    int salary;
    public:
    employee(int id, string name, int salary){
        this->id = id;
        this->name = name;
        this->salary = salary;
    }
    void display_employee(){
        cout << "Employee" << endl;
    }
};

class manager: public employee{
    public:
    void display_manager(){
        cout << "Manager" << endl;
    }
};

class base{
    public:
    int id;
};

class derived: public base{
};



int main(){
    child c;
    c.display_grandparent();

    employee e(1, "John", 10000);
    cout << e.id << " " << e.name << " " << e.salary << endl;

    //e.display_employee();
    return 0;
}