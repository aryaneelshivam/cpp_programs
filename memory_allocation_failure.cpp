#include <iostream>
using namespace std;

//without try catch;
void allocate_memory_1(){
    int *p = new int[1000000000000]; //ram might not have such big contigious memory like this all the time. 
}

//with try catch; Error handling.
void allocate_memory_2(){
    try{ //try allocating
        int *p = new int[1000000000000];
    } catch(bad_alloc& e){ //catch error if allocation fails
        cout << e.what() << endl;
    }
}

int main(){
    allocate_memory_1();
    allocate_memory_2();
    return 0;
}
