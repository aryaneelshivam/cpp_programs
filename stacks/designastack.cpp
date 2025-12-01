#include <iostream>
using namespace std;

class Stack {
    int arr[5];
    int minArr[5];     // auxiliary stack for minimums
    int top;
    int minTop;

public:
    Stack() {
        top = -1;
        minTop = -1;
    }

    void push(int x) {
        if (top == 4) {
            cout << "overflow" << endl;
            return;
        }

        arr[++top] = x;

        // maintain min stack
        if (minTop == -1 || x <= minArr[minTop]) { // if the stack is empty or the current element is less than the top element of the min stack, then push the current element into the min stack
            minArr[++minTop] = x;
        }
    }

    void pop() {
        if (top == -1) {
            cout << "underflow" << endl;
            return;
        }

        int removed = arr[top--];

        if (removed == minArr[minTop]) { // if the removed element is equal to the top element of the min stack, then pop the top element of the min stack
            minTop--; // pop from min stack too
        }
    }

    int peek() {
        if (top == -1) {
            cout << "stack is empty" << endl;
            return -1;
        }
        return arr[top];
    }

    int getMinimumElement() {
        if (minTop == -1) {
            cout << "stack is empty" << endl;
            return -1;
        }
        return minArr[minTop];
    }
};

int main() {
    Stack s1;
    s1.push(3);
    s1.push(2);
    s1.push(5);
    s1.push(1);

    cout << s1.getMinimumElement() << endl; // 1

    s1.pop(); // removes 1
    cout << s1.getMinimumElement() << endl; // 2

    s1.pop(); // removes 5
    cout << s1.getMinimumElement() << endl; // 2

    return 0;
}