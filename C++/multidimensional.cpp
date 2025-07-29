#include <iostream>
using namespace std;

int main(){
    int cars[][3]={{1,2,3},{4,5,6}};
    int rows=sizeof(cars)/sizeof(cars[0]);
    int cols=sizeof(cars[0])/sizeof(cars[0][0]);

    for(int i=0;i<rows;i++){
        for(int j=0;j<cols;j++){
            cout<<cars[i][j]<<" ";
        }
        cout<<endl;
    }
}
