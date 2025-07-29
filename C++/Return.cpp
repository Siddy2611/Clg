#include <iostream>
using namespace std;
double square(double a);

double cube(double a){
    return a*a*a;
}

int main(){
    int a=6;
    cout<<"Square: "<<square(a)<<'\n';
    cout<<"Cube: "<<cube(a);
}

double square(double a){//instead of writing void we write the data type we want when we return a value.
    return a * a;
}