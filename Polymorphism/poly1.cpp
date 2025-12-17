//function overloading in classes
#include <iostream>
using namespace std;

class printer{
    public:
    void print(int x){
        cout << x << endl;
    }

    void print(string s){
        cout << s << endl;
    }
};

int main(){
    printer p;
    p.print(2);
    p.print("Hello");
    return 0;
}