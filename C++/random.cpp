#include <iostream>
#include <ctime>
using namespace std;

int main(){
    srand(time(0));
    int RandomNum=rand()%5+1; //Generate number b/w 1 and 10
    switch(RandomNum){
        case 1: cout<<"You got a 1!";
        break;
        case 2: cout<<"You got a 2!";
        break;
        case 3: cout<<"You got a 3!";
        break;
        case 4: cout<<"You got a 4!";
        break;
        case 5: cout<<"You got a 5!";
        break;
        default: cout<<"Invalid number!";
    }
}
