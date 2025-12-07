#include <iostream>
using namespace std;

int climbingstairs(int x, int n){
    if(x > n){
        return 0;
    }
    if(x == n){
        return 1;
    }
    
    return climbingstairs(x + 1 , n) + climbingstairs(x + 2, n);
}

int main(){
    int n;
    int x;
    cin >> x;
    cin >> n;
    cout << climbingstairs(x , n) << endl;
    return 0;
}   

