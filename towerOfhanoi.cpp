//tower of hanoi
#include <iostream>
using namespace std;

void towerOfHanoi(int n, char source, char target, char helper){
    if(n == 0) return;
    towerOfHanoi(n-1, source, helper, target);
    cout<<"Move disk "<<n<<" from rod "<<source<<" to rod "<<target<<endl;
    towerOfHanoi(n-1, helper, target, source);
}
    
int main(){
    towerOfHanoi(3, 'A', 'C', 'B');
}