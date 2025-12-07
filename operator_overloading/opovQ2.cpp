// write a vector class having x & y components; overload * operator to calculate dot product if two vector 
#include <iostream>
#include <vector>
using namespace std;

class demo{
    vector<int> v;
    public:
    demo(vector<int> v){
        this->v = v;
    }
    
    void operator[](int x){
        for(int i = 0; i < v.size(); i++){
            v[i] *= x;
        }
    }
    
    void show(){
        for(int num : v){
            cout << num << " ";
        }
        cout << endl;
    }
};

int main(){
    demo d1({1,2,3,4,5});
    d1[2];
    d1.show();
}