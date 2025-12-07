//recursion to find sum of first n natural numbers
// total time complexity of a recusrive function is total no of function calls * time taken by each function call
// the total space complexity will be the size of the call stack o(n) and the size of the variables in the function
# include <iostream>
using namespace std;

int sum(int n){
    if(n == 1){
        return 1;
    } else {
        return n + sum(n - 1);
    }
}

int main(){
    int n;
    cout << "Enter a number: ";
    cin >> n;
    cout << "Sum of first " << n << " natural numbers is: " << sum(n) << endl;
    return 0;
} 