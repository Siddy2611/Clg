#include <iostream>
#include <cstdlib>
#include <ctime>

using namespace std;

class Stop{
public:
	bool recieve(){
	return rand() %2;
	}
	void SendData(int f)
	{
		for(int i=1;i<=f;i++)
		{
			cout<<"Sending frames: "<<i<<endl;
			if(!recieve())
			{
				cout<<"Not recieve.Resending"<<i<<endl;
				i--;
			}
			else {
                cout << "Frame " << i << " received successfully!" << endl;
            }
		}
		cout<<"All frames sent success"<<endl;
	}
	
};

int main()
{
	srand(time(0));
	int frame;
	cout<<"Enter no of frames: ";
	cin>>frame;
	Stop().SendData(frame);
	return 0;
}