#include <iostream>
using namespace std;
void MyId(string name,int age){
    cout<<"My name is "<<name<<" and I am "<<age<<" years old.\n";
}
int main(){
int Age;
string Name;
cout<<"Enter your name: ";
cin>>Name;
cout<<"Enter your age: ";
cin>>Age;

MyId(Name,Age);
}