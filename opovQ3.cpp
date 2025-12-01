// write a vector class having x & y components; overload * operator to calculate dot product if two vector 
#include <iostream>
#include <vector>
using namespace std;

class Vector{
    vector<int> v;
    public:
    Vector(vector<int> v){
        this->v = v;
    }
    
    void show(){
        for(int num : v){
            cout << num << " ";
        }
    }
    
    Vector operator+(Vector v2){
        vector<int> v3;
        for(int elem : v){
            v3.push_back(elem);
        }
        for(int elem : v2.v){
            v3.push_back(elem);
        }
        
        return Vector(v3);
    }
};

int main(){
    
Vector vfirst({1,2,3,4});
Vector vseconnd({5,6,7,8});
Vector final = vfirst + vseconnd;
final.show();

return 0;

}