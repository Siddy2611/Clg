#include <iostream>
using namespace std;

int main(){
    double pi= (float)3.14;//Type casting 
    int c=(char)'A';
    int number=10;
    int result=10-5+4*2/2;;
    //number=number+1;// Same can be done with -,*,/ operators
    //number+=1;
    //number++;

    cout<<"Number is: "<<number<<'\n';
    cout<<"Pi is: "<<pi<<'\n';
    cout<<"C is: "<<c<<'\n';
    cout<<"Number is: "<<result;


    int age;
    string fullname;
    cout<<"\nEnter your name: ";
    getline(cin,fullname);//to read words including spaces
    cout<<"Enter your age: ";
    cin>>age;//to read single word or number excludes spaces.
    cout<<"Hello "<<fullname<<", you are "<<age<<" years old.";

    return 0;
}