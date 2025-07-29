#include <iostream>
#include <ctime>
using namespace std;

char getUser(){
    cout<<"-------------------Welcome to Rock, Paper, Scissors!-------------------\n";
    char player;
    
    do{
    cout<<"Choose your move: \n";
    cout<<"R for Rock\nP for Paper\nS for Scissors: ";
    cin>>player;
    player = tolower(player);
    } while(player != 'r' && player != 'p' && player != 's');
    return player;
}

char getComputer(){
    srand(time(0));
    int comp=rand() % 3 + 1;

    switch(comp){
        case 1: return 'r';
        case 2: return 'p';
        case 3: return 's';
    }
}
void getChoice(char choice){
    switch(choice){
        case 'r': cout<<"You chose Rock.\n"; break;
        case 'p': cout<<"You chose Paper.\n"; break;
        case 's': cout<<"You chose Scissors.\n"; break;
        default: cout<<"Invalid choice.\n"; break;
    }
}
void play(char player, char computer)
{
    if(player==computer)
    {
        cout<<"It's a tie!\n";
    }
    else if((player=='r'&& computer=='s')||(player=='p'&& computer=='r')||(player=='s'&& computer=='p') )
    {
    cout<<"Player wins!\n";
    }
    else
    {
        cout<<"Computer wins!\n";
    }
}


int main(){
    char player = getUser();
    cout<<"You chose: ";
    getChoice(player);
    char computer = getComputer();
    cout<<"Computer chose: ";
    getChoice(computer);
    play(player,computer);
    return 0;
}