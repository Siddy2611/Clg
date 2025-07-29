#include <iostream>
using namespace std;

void food(){
    cout<<"Apple\n";
}
void food(string s){
    cout<<"Fruit: "<<s<<'\n';
}
void food(string s,string s1){
    cout<<"Fruit: "<<s<<'\n';
    cout<<"Vegetable: "<<s1;
}

int main(){
    food();
    food("Banana");
    food("Banana","Carrot");
    return 0;
}