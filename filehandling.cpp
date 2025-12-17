#include <iostream>
#include <fstream>
using namespace std;

struct student{
    string name;
    int roll_number;
    float marks;
};


void appendfile(string filename, string text){ //appends new data without overridding the existing data
    ofstream fin(filename, ios::app);
    fin << text;
    fin.close();
}

void readfile(string filename){ //reads the file and displays the data
    ifstream fin(filename);
    string line;
    while(getline(fin, line)){
        cout << line << endl;
    }
    fin.close();
}

int vowel_and_consonant_count(string filename){
    ifstream fin(filename);
    string line;
    int vowel_count = 0;
    int consonant_count = 0;
    while(getline(fin, line)){ //get each line of the file
        for(char ch : line){ //get each character of each line
            if(isalpha(ch)){ //check if the character is an alphabet
                if(ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' || ch == 'A' || ch == 'E' || ch == 'I' || ch == 'O' || ch == 'U'){
                    vowel_count++;
                } else{
                    consonant_count++;
                }
            }
        }
    }
    fin.close();
    return vowel_count;
    return consonant_count;
}

void writefile(string filename, string text){ //writes new data and overrides the existing data
    ofstream fin(filename);
    fin << text;
    fin.close();
}

void deletefile(string filename){ //deletes the file
    if(remove(filename.c_str()) != 0){
        cout << "Error deleting file" << endl;
    } else {
        cout << "File deleted successfully" << endl;
    }
}

void renamefile(string oldname, string newname){ //renames the file
    if(rename(oldname.c_str(), newname.c_str()) != 0){
        cout << "Error renaming file" << endl;
    } else {
        cout << "File renamed successfully" << endl;
    }
}

void copyfile(string source, string destination){ //copies the file to a new location
    ifstream fin(source);
    ofstream outfile(destination, ios::app); //ios::app is used to append the file instead of overwriting it
    string line;
    while(getline(fin, line)){
        outfile << line << endl;
    }
    fin.close();
    outfile.close();
}

void movefile(string source, string destination){ //moves the file to a new location
    if(rename(source.c_str(), destination.c_str()) != 0){
        cout << "Error moving file" << endl;
    } else {
        cout << "File moved successfully" << endl;
    }
}

void sizeoffile(string filename){ //returns the size of the file
    ifstream fin(filename);
    fin.seekg(0, ios::end);
    cout << "Size of file is: " << fin.tellg() << " bytes" << endl;
    fin.close();
}

int numberoflines(string filename){
    ifstream fin(filename);
    string line;
    int count = 0;
    while(getline(fin, line)){
        count++;
    }
    fin.close();
    return count;
}

void useAte(string filename){ //writes to the file at any given position 
    ofstream outfile(filename, ios::in | ios::out | ios::ate);
    if(!outfile){
        cout << "Error opening file" << endl;
    }
    //outfile << "Hello World"; //write to the file
    outfile.seekp(0, ios::beg); //seek to the beginning of the file; we can move the cursor using seekpeek
    outfile << "Hello World"; //write to the file
    outfile.close(); //close the file
    cout << "File created successfully" << endl;
}

void binaryReadWrite(string binary_filename, student s1){
    ofstream outfile(binary_filename, ios::binary);
    if(!outfile){
        cout << "Error opening file" << endl;
    }
    outfile.write((char*)&s1, sizeof(s1));
    outfile.close();

    ifstream infile(binary_filename, ios::binary);
    if(!infile){
        cout << "Error opening file" << endl;
    }
    student s2;
    infile.read((char*)&s2, sizeof(s2));
    infile.close();
    cout << "Name: " << s2.name << endl;
    cout << "Roll Number: " << s2.roll_number << endl;
    cout << "Marks: " << s2.marks << endl;

}


int main(){
   string filename = "test.txt";
   string start = "This is the start of the file \n";
   string text = "Hello World my name is Aryaneel Shivam \n";
   string text2 = "Hello World my name is Aryaneel Shivam \n";
   string text3 = "Hello World my name is Aryaneel Shivam \n";
   writefile(filename, start);
   appendfile(filename, text);
   appendfile(filename, text2);
   appendfile(filename, text3);
   readfile(filename);
   cout << "Number of lines in the file is: " << numberoflines(filename) << endl;
   cout << "Number of vowels  and consonants in the file is: " << vowel_and_consonant_count(filename) << endl;
   string binary_filename = "student.dat";
   student s1 = {"Aryaneel", 1234567890, 90.0};

   return 0;
   
}
