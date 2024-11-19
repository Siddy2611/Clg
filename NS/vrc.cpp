#include <iostream>
#include <string>
using namespace std;

int calculate_one(string line){
	int count=0;
	for(int i=0;i<line.length();i++)
	{
		if(line[i]=='1')
			count++;
	}
	return count;
}

int main()
{
	string lines[4];
	int count=0;
	int num,n;
	lines[0]="1010";
	lines[1]="1011";
	lines[2]="1100";
	lines[3]="1101";
	count=4;


	cout<<"Content: ";
	for(int i=0;i<count;i++)
	{
		cout<<lines[i]<<endl;
	}
	cout<<"Enter 0 for odd no and 1 for even no: ";
	cin>>n;

	for(int i=0;i<count;i++)
	{
		num=calculate_one(lines[i]);
		
		if(n==0)
		{
			if(num%2==0){
				lines[i].append("1");
				cout<<"\n"<<lines[i];
			}
			else{
				lines[i].append("0");
				cout<<"\n"<<lines[i];
			}
		}
		else if(n==1){
			if(num%2==0){
				lines[i].append("0");
				cout<<"\n"<<lines[i];
			}
			else{
				lines[i].append("1");
				cout<<"\n"<<lines[i];
			}
		}
		else
		{
			cout<<"Invalid choice";
		}
	}
	return 0;
}