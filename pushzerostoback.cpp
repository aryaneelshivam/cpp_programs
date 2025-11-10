#include <vector>
#include <algorithm> 

class Solution {
public:
    void pushZerosToEnd(std::vector<int>& arr) {

        int nonZeroIndex = 0; 
        int n = arr.size();

        for (int i = 0; i < n; ++i) {
            if (arr[i] != 0) {
                if (nonZeroIndex != i) {

                    std::swap(arr[nonZeroIndex], arr[i]);
                }
                nonZeroIndex++;
            }
        }
    }
};
