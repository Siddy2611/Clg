#include <iostream>
using namespace std;

int main(){

    string questions[]={"1.What is the capital of France?",
                        "2. Largest planet in our solar system?",
                        "3. Which is the largest country in the world"};
    string options[][4]={{"A. Paris","B. London","C. Berlin","D. Madrid"},
                         {"A. Earth","B. Jupiter","C. Saturn","D. Mars"},
                         {"A. USA","B. Russia","C. China","D. Canada"}};
    char answers[]={'A','B','B'};

    int size=sizeof(questions)/sizeof(questions[0]);
    int optionSize=sizeof(options[0])/sizeof(options[0][0]);
    int score=0;
    char answer;

        for(int i=0;i<size;i++){
        cout<<"***************************************************\n";
        cout<<questions[i]<<'\n';
        cout<<"***************************************************\n";
        for(int j=0;j<optionSize;j++){
            cout<<options[i][j]<<'\n';
        }
    cout<<"Enter your choice (A,B,C,D): ";
    cin>>answer;
    answer = toupper(answer);
    if(answer == answers[i]){
        cout<<"Correct answer!\n";
        score++;
    }
    else {
        cout<<"Wrong answer! The correct answer is: "<<answers[i]<<'\n';
        score--;
    }
    }
    cout<<"Your total score is: "<<score;
    }