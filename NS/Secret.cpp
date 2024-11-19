#include <iostream>
#include <cstdlib>
#include <openssl/rand.h>  // For generating random bytes
#include <openssl/evp.h>   // Support for AES, DES, Blowfish, etc.

using namespace std;

// Function to generate a symmetric key for a given algorithm
void generateSymmetricKey(int keyLength, string algorithmName) {
    unsigned char key[64]; 

    cout << algorithmName << " Symmetric Key (" << keyLength * 8 << " bits): ";

    for (int i = 0; i < keyLength; i++) {
        printf("%02X", key[i]);
    }

    cout << endl;
}

int main() {
    int keyLength;
    string algorithmName, keyType;

    cout << "Enter the key type: ";
    cin >> keyType;

    cout << "Enter the algorithm name: ";
    cin >> algorithmName;

    // For symmetric keys
    if (keyType == "symmetric") {
        if (algorithmName == "des") {
            keyLength = 8;  // DES key length is 8 bytes
        } else if (algorithmName == "blowfish") {
            keyLength = 16;  // Maximum Blowfish key length is 16 bytes
        } else if (algorithmName == "idea") {
            keyLength = 16;  // IDEA key length is 16 bytes
        } else if (algorithmName == "triple des") {
            keyLength = 24;  // Triple DES key length is 24 bytes
        } else {
            cout << "Invalid algorithm. Please choose from 'des', 'blowfish', 'idea', or 'triple des'." << endl;
            return 1;
        }

        generateSymmetricKey(keyLength, algorithmName);
    } else {
        cout << "Invalid key type. Please choose from the correct name." << endl;
    }

    return 0;
}
