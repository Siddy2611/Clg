#include <iostream>
using namespace std;

class sliding{
public:
	void sendFrames(int Windowsize, int Totalframes)
	{
		for(int i=0;i<Totalframes;i++)
		{
			int end=min(i+Windowsize,Totalframes);
			cout<<"Sending frames: "<<i+1<<" to "<<end<<endl;
			cout<<"Acknowledged: "<<i+1<<endl;
		}
	cout<<"All frames sent"<<endl;
	}
};
int main()
{
	int Windowsize,Totalframes;
	cout<<"Enter window and total frames: ";
	cin>>Windowsize>>Totalframes;
	sliding().sendFrames(Windowsize,Totalframes);
	return 0;
} 