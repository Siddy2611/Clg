#include <iostream>
#include <ctime>
using namespace std;

int main() {
    srand(time(0));
    int num=rand()%5+1;
    int guess,tries=0;
    do{
        cout<<"Guess the number (1-5): ";
        cin>>guess;
        tries++;
       if(guess>num){
        cout<<"Too high! Try again.\n";
       }
       else if(guess<num){
        cout<<"Too low! Try again.\n";
       }
       else{
        cout<<"You guessed "<<guess<<" right in "<<tries<<" tries!";
       }
    }while(guess!=num);
}