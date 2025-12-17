// write a vector class having x & y components; overload + operator to calculate dot product if two vector 
#include <iostream>
#include <vector>
using namespace std;

class Vector{
    vector<int> v;
    public:
    Vector(vector<int> v){
        this->v = v;
    }
    
    int operator()(int x){
        int sum = 0;
        if(x > v.size()){ // edge case handling for index out of range
            cout << "Index out of range" << endl;
            return -1;
        }
        for(int i = 0; i < x; i++ ){
            sum += v[i];
        }
        return sum;
    }
};

int main(){
Vector v1({1,2,3,4,5});
cout << v1(3);
return 0;

}