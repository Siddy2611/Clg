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
	string parity=" ";
	string check=" ";
	int num,n;
	lines[0]="1010";
	lines[1]="1011";
	lines[2]="1100";
	lines[3]="1101";
	count=4;


	cout<<"Enter 0 for odd no and 1 for even no: ";
	cin>>n;

	cout<<"Content: "<<endl;
	for(int i=0;i<count;i++)
	{
		cout<<lines[i]<<endl;
	}


	for(int i=0;i<lines[0].length();i++)
	{
		for(int j=0;j<count;j++)
		{
			check.append(1,lines[j][i]);
		}
		num=calculate_one(check);
		
		if(n==0)
		{
			if(num%2==0){
				parity.append("1");
				cout<<"\n"<<lines[i];
			}
			else{
				parity.append("0");
				cout<<"\n"<<lines[i];
			}
		}
		else if(n==1){
			if(num%2==0){
				parity.append("0");
				cout<<"\n"<<lines[i];
			}
			else{
				parity.append("1");
				cout<<"\n"<<lines[i];
			}
		}
		else
		{
			cout<<"Invalid choice";
		}
		check.clear();
	}
	cout<<endl<<"LRC bits:"<<parity<<endl;
	return 0;
}