// write a program to print words having length greater than 4 
#include <iostream>
#include <fstream>
#include <string>
using namespace std;

void readfromfile(string filename){
    ifstream infile(filename);
    string line;
    while(getline(infile, line)){
        cout << line << endl;
    }
    infile.close();
}

bool searchword(string filename, string word){
    ifstream infile(filename);
    string word_stored; //declare a variable to store the word read from the file
    while(infile >> word_stored){ //this reads the file word by word
        if(word_stored == word){ //this checks if the word read from the file is equal to the word to be searched
            return true;
        }
    }
    return false;
    infile.close();
}

int main(){
    string filename = "length.txt";
    ofstream outfile(filename);
    outfile << "Hello World my name is Aryaneel Shivam and I love to code.";
    outfile.close();

    ifstream infile(filename); //open the file in read mode

    if(!infile){
        cout << "Error opening file" << endl;
        return 1;
    }

    string word; 
    while( infile >> word){ //this reads the file word by word
        if(word.length() > 4){ //this checks if the word is greater than 4 characters
            cout << word << endl;
        }
    }

    infile.close();
    if(searchword(filename, "lubbabubba")){ //function call
        cout << "Word found" << endl;
    } else {
        cout << "Word not found" << endl;
    }

    readfromfile(filename);

    
    return 0;
}