  #include <iostream>
#include <math.h>
using namespace std;

int main()
{
  double p,q,e,d;
  cout<<"Enter p value: "<<endl;
  cin>>p;
  cout<<"Enter q value: "<<endl;
  cin>>q;
  double n=p*q;
  cout<<"N: "<<n<<endl;
  double phi=(p-1)*(q-1); 
  cout<<"Phi: "<<phi<<endl;
  cout<<"E: ";
  cin>>e;
  for(int i=1;i<100;i++)
  {
  d=(phi*i+1)/e;
  if(fmod(d,1)==0)
  {
    break;
  }
  }
  cout<<"D: "<<d;
  double c=pow(p,e);
  double m=pow(c,d);
  c=fmod(c,n);
  m=fmod(m,n);
  cout<<"Encrypted message: "<<c<<endl;
  cout<<"Decrypted message: "<<m;
  return 0;
}