#include <iostream>
using namespace std;

int main(){
    string arr[]={"Apple","Banana","Cherry","Pineapple"};
    cout<<"Array 1st element: "<<arr[0];

    cout<<"\nArray elements are: ";
    for(int i=0;i<4;i++){
        cout<<arr[i]<<' ';
    }

    cout<<"\nArray total elements: "<<sizeof(arr)/sizeof(string);
}