#include <iostream>
using namespace std;

int main(){
    int age;

    cout<<"Enter your age: ";
    cin>>age;

    if(age>=18){
        cout<<"Eligible";
    }
    else if(age<18){
        cout<<"Not eligible";
    }
    else{
        cout<<"Enter valid age";
    }

    //ternary operator

    // age>=18 ? cout<<"Eligible" : cout<<"Not eligible";
    // &&(AND)  ||(OR) !(NOT) operators
}