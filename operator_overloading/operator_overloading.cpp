#include <iostream>
using namespace std;

class student{
    public:
    string name;
    void operator!(){
        cout << "Name is: " << name << endl;
    }
};


class food{
    int price;
    public:
    food(int p): price(p) {}
    void showprice(){
        cout << "Price is: " << price << endl;
    }

    food operator++(){ //overloading the ++ operator
        ++price;
        return *this;
    }

    food operator--(){ //overloading the -- operator
        --price;
        return *this;
    }

    food operator++(int p){ //overloading the ++ operator: post increment
        food temp = *this;
        price++;
        return temp;
    }

    food operator--(int p){ //overloading the -- operator: post decrement
        price--;
        return *this;
    }

    void operator-(){
        price = -price;
    }
};

int main(){
    int x = 0;
    int y = ++x;
    cout << x << " " << y << endl;;
    y = x++;
    cout << x << " " << y << endl;
    //--------------------------------//
    food pizza1(200);
    food pizza2 = ++pizza1;
    pizza1.showprice();
    pizza2.showprice();
    food pizza3 = pizza1++;
    pizza3.showprice();
    pizza1.showprice();
    -pizza1;
    pizza1.showprice();

    student s1;
    s1.name = "Aryaneel";
    !s1;
}

