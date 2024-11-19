#include<iostream>
#include<string>
using namespace std;

void encrypt(){
    string plainText;
    cout<<"Enter Plain Text : ";
    getline(cin, plainText);
 
    string key,k;
    cout<<"Enter Key : ";
    getline(cin, key);

    for(int i=0,j=0;i<plainText.length();++i,++j)
    {
        if(j==key.length())
        {
            j=0;
        }
        k+=key[j];
    }

    string cipherText;
    for (int i = 0; i < plainText.length(); i++)
    {
        if(plainText[i] == ' '){
            cipherText += plainText[i];
        }

        else{
            if(isupper(plainText[i])){
                int pval = int(plainText[i])-65;
                int kval = int(k[i])-65;
                int cval = pval+kval;
                if(cval>=26)
                    cval -= 26;
                cipherText += (char)(cval+65);
            }
            else{
                int pval = int(plainText[i])-97;
                int kval = int(k[i])-97;
                int cval = pval+kval;
                if(cval>=26)
                    cval -= 26;
                cipherText +=(char)(cval+97);
            }
        }
    }
    cout<<"Cipher Text : "<<cipherText;
}

void decrypt(){
    string cipherText,plainText;
    cout<<"Enter Cipher Text : ";
    getline(cin, cipherText);

    string key,k;
    cout<<"Enter Key : ";
    getline(cin, key);

    for(int i=0,j=0;i<cipherText.length();++i,++j)
    {
        if(j==key.length())
        {
            j=0;
        }
        k+=key[j];
    }

    for (int i = 0; i < cipherText.length(); i++)
    {
        if(cipherText[i] == ' '){
            plainText += cipherText[i];
        }

        else{
            if(isupper(cipherText[i])){
                int pval = int(cipherText[i])-65;
                int kval = int(k[i])-65;
                int cval = pval-kval;
                if(cval>=26)
                    cval -= 26;
                if(cval<0)
                    cval += 26;
                plainText += (char)(cval+65);
            }
            else{
                int pval = int(cipherText[i])-97;
                int kval = int(k[i])-97;
                int cval = pval-kval;
                if(cval>=26)
                    cval -= 26;
                if(cval<0)
                    cval += 26;
                plainText += (char)(cval+97);
            }
        }
    }
    cout<<"Decrypted Text : "<<plainText;
}

int main(){
    int ch;
    cout<<"Choose : "<<endl<<"1. Encryption\t2. Decryption"<<endl;
    cin>>ch;
    cin.ignore();
    switch(ch){
        case 1:
            encrypt();
            break;

        case 2:
            decrypt();
            break;

        default :
            cout<<"Invalid choice!";
    }
}