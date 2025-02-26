#include <iostream>
#include <sys/socket.h>
#include <netinet/in.h>
#include <unistd.h>
#include <cstring>

int main() {
    int server_fd = socket(AF_INET, SOCK_STREAM, 0);
    
    sockaddr_in addr;
    addr.sin_family = AF_INET;
    addr.sin_port = htons(8080);
    addr.sin_addr.s_addr = INADDR_ANY;

    bind(server_fd, (sockaddr*)&addr, sizeof(addr));
    listen(server_fd, 3);

    int client_socket = accept(server_fd, nullptr, nullptr);
    
    send(client_socket, "Hello from Server", 17, 0);
    
    char buffer[1024] = {0};
    read(client_socket, buffer, sizeof(buffer));
    std::cout << buffer << std::endl;

    close(client_socket);
    close(server_fd);
    return 0;
}




