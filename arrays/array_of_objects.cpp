//array of objects
#include <iostream>
using namespace std;

class book{
    string book_name;
    int book_price;
    public:
    void set_book_details(string book_name, int book_price){
        this->book_name = book_name;
        this->book_price = book_price;
    }
    void get_book_details(){
        cout << "Book name: " << book_name << " Book price: " << book_price << endl;
    }
};


int main(){
    string book_name[5];
    int book_price[5];
    book books[5];
    for(int i = 0; i < 5; i++){
        cin >> book_name[i] >> book_price[i];
        books[i].set_book_details(book_name[i], book_price[i]);
    }
    for(int i = 0; i < 5; i++){
        books[i].get_book_details();
    }
    
}