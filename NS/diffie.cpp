#include <iostream>
#include <math.h>
using namespace std;

int main()
{
	double p,g,a,b;
	cout<<"Enter p: "<<endl;
	cin>>p;
	cout<<"Enter g: "<<endl;
	cin>>g;
	cout<<"Enter a: "<<endl;
	cin>>a;
	cout<<"Enter b: "<<endl;
	cin>>b;
	double x=pow(g,a);
	x=fmod(x,p);
	cout<<"X: "<<x<<endl;
	double y=pow(g,b);
	y=fmod(y,p);
	cout<<"Y:"<<y<<endl;
	double ka=pow(y,a);
	ka=fmod(ka,p);
	cout<<"Alice's Shared Key:"<<ka<<endl;
	double kb=pow(x,b);
	kb=fmod(kb,p);
	cout<<"Bob's Shared Key:"<<kb<<endl;
	if(ka==kb)
	{
		cout<<"Both have same shared key";
	}
	else
	{
		cout<<"Both have different shared key";
	}
	return 0;
}