#include <iostream>
#include <winsock.h>
#include <unistd.h>

using namespace std;

int main() {
    int client_socket = socket(AF_INET, SOCK_STREAM, 0);
    sockaddr_in client;
    client.sin_family = AF_INET;
    client.sin_port = htons(8080);
    client.sin_addr.s_addr=INADDR_ANY;

    connect(client_socket, (sockaddr*)&client, sizeof(client));
    
    char buffer[1024] = {0};
    read(client_socket, buffer, sizeof(buffer));
    cout << buffer << std::endl;
    
    send(client_socket, "Hello from Client", 17, 0);
    close(client_socket);
    return 0;
}


