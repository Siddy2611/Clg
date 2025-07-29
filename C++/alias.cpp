#include <iostream>
#include <vector>

//typedef std::string text; //for aliasing datatypes
typedef int num;

using text=std::string;//used more often as works well with templates and more readable

int main(){
    text name="Sid";
    num age=21;
    std::cout<<"My name is "<<name<<" and I am "<<age<<" years old";
}