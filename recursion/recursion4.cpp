// find x^n using recursion
#include <iostream>
using namespace std;
int power(int x, int n){
    if(x == 1 || n == 0){ //base conditions to save recursions
        return 1;
    } else if(n == 1){ //base conditions to solve recursions 
        return x;
    }
    
    return x * power(x, n - 1);
}

int main(){
   int x = 2;
   int n = 4;
   cout << power(x,n);
}