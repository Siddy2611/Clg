#include <iostream>
#include <string>
using namespace std;

void encrypt()
{
    string plaintext;
    cout << "Enter plain text: ";
    getline(cin, plaintext);
    string ciphertext;
    string key = "nopqrstuvwxyzmlkjihgfedcba";

    for (int i = 0; i < plaintext.length(); i++)
    {
        if (plaintext[i] == ' ') 
        {
            ciphertext += plaintext[i];
        }
        else
        {
            if (isupper(plaintext[i])) 
            {
                int val = plaintext[i] - 'A';
                ciphertext += toupper(key[val]);
            }
            else if (islower(plaintext[i])) 
            {
                int val = plaintext[i] - 'a';
                ciphertext += key[val];
            }
        }
    }
    cout << "Cipher Text: " << ciphertext << endl;
}

void decrypt()
{
    string ciphertext;
    cout << "Enter cipher text: ";
    getline(cin, ciphertext);
    string plaintext;
    string key = "nopqrstuvwxyzmlkjihgfedcba";

    for (int i = 0; i < ciphertext.length(); i++)
    {
        if (ciphertext[i] == ' ') 
        {
            plaintext += ciphertext[i];
        }
        else
        {
            if (isupper(ciphertext[i])) 
            {
                int val = key.find(tolower(ciphertext[i]));
                plaintext += (val+'A'); 
            }
            else if (islower(ciphertext[i])) 
            {
                int val = key.find(ciphertext[i]);
                plaintext += (val+'a'); 
            }
        }
    }
    cout << "Plain Text: " << plaintext << endl;
}

int main()
{
    encrypt();  
    decrypt();  
    return 0;
}
