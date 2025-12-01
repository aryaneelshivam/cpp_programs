//create employee class having data members id and salary; create tree objcts of employee class and write data of these objects into a binary file
#include <ios>
#include <iostream>
#include <fstream>
using namespace std;

class employee{
    int id;
    int salary;
    public:
    employee(int id, int salary){
        this->id = id;
        this->salary = salary;
    }

};

void write_to_file(string filename, employee &e){
    ofstream outfile(filename, ios::binary | ios::app);
    outfile.write((char*)&e, sizeof(e));
    outfile.close();
}

void read_from_file(string filename, employee e1){
    ifstream infile(filename, ios::binary);
    infile.read((char*)&e1, sizeof(e1));
    infile.close();
    employee e2;
    cout << "ID: " << e2.id << " Salary: " << e2.salary << endl;

}

int count_records(string filename){
    ifstream infile(filename);
    int count = 0;
    string line;
    while(getline(infile, line)){
        count++;
    }

    return count-1;
}

int main(){
    string filename = "employee.dat";
    employee e1(1, 10000);
    employee e2(2, 20000);
    employee e3(3, 30000);
    write_to_file(filename, e1);
    write_to_file(filename, e2);
    write_to_file(filename, e3);
    read_from_file(filename);
    cout << "Total number of records: "<< count_records(filename) << endl;

    return 0;
}