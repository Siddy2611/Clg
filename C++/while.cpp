#include <iostream>
using namespace std;
int main(){
    string name;
    cout<<"Enter your username: ";
    getline(cin, name);

    while(name!="Sid Sarkar"){
        cout<<"Incorrect username, try again: ";
        getline(cin,name);
    }
    cout<<"Succesfully logged in\nWelcome: "<<name;
}