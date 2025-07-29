#include <iostream>
using namespace std;

//Note: & is used to get address of variable and * pointer used to dereference to get value of that address.
//Address of variables are different every time we run program, but the size remains same.

int main() {
    int age=21;
    int *pAge=&age;

    string name="Sid";
    string *pName=&name;

    cout<<"Age: "<<age<<'\n';
    cout<<"Pointer Memory: "<<pAge<<'\n';//gives memory address of variable
    cout<<"Pointer Age: "<<*pAge<<'\n'; //* derefernces the pointer to get value where it points to

    cout<<"***********************\n";

    cout<<"Name: "<<name<<'\n';
    cout<<"Pointer Memory: "<<pName<<'\n';
    cout<<"Pointer Name: "<<*pName<<'\n';

    cout<<"***********************\n";

string arr[]={"Sid","John","Priya","Saheb"};
    string *pArr=arr;

    cout<<pArr<<'\n'; //gives memory address of first element of array
    cout<<*pArr<<'\n'; //gives value of first element of array 
    cout<<*(pArr+3)<<'\n';//gives value of second elemnent of array
}