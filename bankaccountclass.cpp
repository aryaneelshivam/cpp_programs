#include <iostream>
using namespace std;

class bankaccount{
    string name;
    int account_number;
    double balance;
    public:
    bankaccount(string name, int account_number, double balance = 0.0){
        cout << "called for: " << name << endl;
        this->name = name;
        this->account_number = account_number;
        this->balance = balance;
    }

    ~bankaccount(){
        cout << "Accounts closed for" << name << endl;
    }

    void showdetails(){
        cout << "Name: " << name << endl;
        cout << "Account Number: " << account_number << endl;
        cout << "Balance: " << balance << endl;
    }

    void setdetails(string name, int account_number, double balance){
        this->name = name;
        this->account_number = account_number;
        this->balance = balance;
    }
};

int main(){
    bankaccount b1("John", 1234567890, 1000.0);
    bankaccount b2(b1);
    b2.setdetails("Aryaneel", 12415038, 100000.0);
    
    bankaccount b3("Jane", 1234567891, 2000.0);

    b1.showdetails();
    b2.showdetails();
    b3.showdetails();
    return 0;
}