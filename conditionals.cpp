// Online C++ compiler to run C++ program online
//#include <bits/stdc++.h>
#include <iostream>
#include <climits>
using namespace std;

int main() {
    int age;
    char gender;
    cout << "Enter gender (M/F):";
    cin >> gender;
    cout << "Enter age:";
    cin >> age;
    
    if(gender == 'M'){
        if(age >= 20){
            cout << "Eligible";
        } else {
            cout << "Not eligible";
        }
        
    };
    if(gender == 'F'){
        if(age >= 18){
            cout << "Eligible";
        } else {
            cout << "Not eligible";
        }
    };
}