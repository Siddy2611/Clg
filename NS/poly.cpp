#include<iostream>
#include<string>
#include<cstdlib>
#include<ctime>
using namespace std;

char encode(char element) {
    string key[26] = { "QWE", "RTY", "UIO", "PAS", "DFG", "HJK", "LZX", "CVB", "NMQ", "WER",
        "TYU", "IOP", "ASD", "FGH", "JKL", "ZXC", "VBN", "MQW", "ERT", "YUI",
        "OPA", "SDF", "GHJ", "KLZ", "XCV", "BNM"};
    
    srand(time(0));
    int ind = rand() % 3;  // Select one of the 3 characters randomly
    char letter = int(toupper(element)) - 65;  // Convert character to index (0-25)
    char ch = key[letter][ind];  // Pick random character from key

    // Convert back to lowercase if original character was lowercase
    if (islower(element))
        ch = tolower(ch);
    
    return ch;
}

char decode(char element) {
    string key[26] = { "QWE", "RTY", "UIO", "PAS", "DFG", "HJK", "LZX", "CVB", "NMQ", "WER",
        "TYU", "IOP", "ASD", "FGH", "JKL", "ZXC", "VBN", "MQW", "ERT", "YUI",
        "OPA", "SDF", "GHJ", "KLZ", "XCV", "BNM"};
    
    // Convert character to uppercase for matching
    element = toupper(element);

    // Find the corresponding letter for the encoded character
    for (int i = 0; i < 26; i++) {
        if (key[i].find(element) != string::npos) {
            char ch = 'A' + i;  // Map to the letter corresponding to the set
            // Return the letter in the correct case
            return islower(element) ? tolower(ch) : ch;
        }
    }
    return element;  // If it's not a letter, return it unchanged (e.g., spaces)
}

int main() {
    string plainText;
    cout << "Enter Plain Text: ";
    getline(cin, plainText);

    // Encryption
    string cipherText;
    for (int i = 0; i < plainText.length(); i++) {
        if (plainText[i] == ' ')
            cipherText += plainText[i];
        else {
            char element = encode(plainText[i]);
            cipherText += element;
        }
    }
    cout << "Cipher Text: " << cipherText << endl;

    // Decryption
    string decryptedText;
    for (int i = 0; i < cipherText.length(); i++) {
        if (cipherText[i] == ' ')
            decryptedText += cipherText[i];
        else {
            char element = decode(cipherText[i]);
            decryptedText += element;
        }
    }
    cout << "Decrypted Text: " << decryptedText << endl;

    return 0;
}
