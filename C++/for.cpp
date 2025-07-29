#include <iostream>
using namespace std;

int main(){
    int num;
    cout<<"Even numbers from 2 to 10 are: ";
    for(num=2;num<=10;num+=2){
        if(num==6){
            continue;//break
        }
        cout<<num<<' ';
    }

}