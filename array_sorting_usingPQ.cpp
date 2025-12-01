# include <iostream>
# include <queue>
using namespace std;


int main(){
    vector<int> arr = {6,7,5,3,2,4};
    priority_queue<int, vector<int>, greater<int>> pq(arr.begin(), arr.end());
    cout << endl;
    for(int i = 0; i < arr.size(); i++){
        arr[i] = pq.top();
        pq.pop();
        cout << arr[i] << " ";
    }
    return 0;
}