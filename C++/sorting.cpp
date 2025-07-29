#include <iostream>
//#include <algorithm>
using namespace std;

void sort(int arr[],int size){
    for(int i=0;i<size-1;i++){
        for(int j=0;j<size-i-1;j++){
            if(arr[j]>arr[j+1]){
                int temp=arr[j];
                arr[j]=arr[j+1];
                arr[j+1]=temp;
                //swap(arr[j],arr[j+1]); Alternative way using algorithm header
            }
        }
    }
}

int main(){
    int arr[]={5,22,9,74,65};
    int size=sizeof(arr)/sizeof(int);
    cout<<"Array before sorting: ";
    for(int elements : arr){
        cout<<elements<<' ';
    }
    cout<<"\nArray after sorting: ";
    sort(arr,size);
    for(int elements : arr){
        cout<<elements<<' ';
    }
}