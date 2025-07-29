#include <iostream>
using namespace std;

int search(int arr[], int size, int element){
    for(int i=0;i<size;i++){
        if(arr[i]==element){
           return i;
        }   
    }
    return -1;
}

int main(){
int arr[]={20,12,45,67,74,65};
int myNum,index;
cout<<"Enter a number to search: ";
cin>>myNum;
int size=sizeof(arr)/sizeof(int);
index=search(arr,size,myNum);
if(index!=1)
{
    cout<<myNum<<" found at: "<<index<<'\n';
} 
else {
    cout<<"Number not found in the array.\n";
}
}
