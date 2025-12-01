//celebrity problem using stack
#include <iostream>
#include <stack>
using namespace std;

int main(){
    int n;
    cin >> n;
    int arr[n][n];
    for(int i = 0; i < n; i++){
        for(int j = 0; j < n; j++){
            cin >> arr[i][j];
        }
    }

    stack<int> s;
    for(int i = 0; i<n; i++){
        s.push(i);
    }
    while(s.size() > 1){
        int a = s.top();
        s.pop();
        int b = s.top();
        s.pop();
        if(arr[a][b] == 1){
            s.push(b);
        } else{
            s.push(a);
        }
    }
    int celebrity = s.top();
    bool iscelebrity = false;
    for(int i = 0; i<n; i++){
        if(i != celebrity && (arr[celebrity][i] == 1 || arr[i][celebrity] == 0)){
            iscelebrity = false;
        }
    }
    if(iscelebrity){
        cout << "Celebrity is: " << celebrity << endl;
    } else {
        cout << "No celebrity found" << endl;
    }
    return 0;
}