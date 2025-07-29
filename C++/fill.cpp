#include <iostream>
using namespace std;

int main(){
    string fruit[5];
    // fill(fruit,fruit+2,"Pizza");
    // fill(fruit+2,fruit+5,"Pasta");
    string temp;
    cout<<"Enter your favorite fruits or q to exit: \n";
    for(int i=0;i<5;i++){
        cout<<"Fruit "<<i+1<<": ";
        getline(cin, temp);
        if(temp=="q"){
            break;
        }
        else fruit[i]=temp;
    }
    cout<<"\nFav fruits are: \n";
    for(int i=0; !fruit[i].empty();i++){
        cout<<fruit[i]<<'\n ';
    }
}