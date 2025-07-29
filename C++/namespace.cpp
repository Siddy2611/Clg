#include <iostream>

namespace one{//namespace gives solution to name conflicts as long as namespace are different.
    int a=10;
}

namespace two{
    int a=20;
}

int main(){
    using namespace two;
    using std::cout;
    cout<<"Value in namespace "<<one::a;
    cout<<"Value in namespace two "<<a<<std::endl;
    return 0;
}