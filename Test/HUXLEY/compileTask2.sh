rm /home/experimento/Experimento/Test/HUXLEY/socket.c

cat <<EOT >> /home/experimento/Experimento/Test/HUXLEY/socket.c
#include <stdio.h>
int AF_INET = 1;
int AF_UNIX = 2;
int AF_INET6 =3;

int evutil_ersatz_socketpair(int family, int type, int protocol) {
	return family;
}

EOT

sed '/#include/d' /home/experimento/Experimento/Worskpace/HUXLEY/Warm2/Warm2/socket.c >> /home/experimento/Experimento/Test/HUXLEY/socket.c

cat <<EOT >> /home/experimento/Experimento/Test/HUXLEY/socket.c

void main() {
#ifdef USE_AF_INET
	if(test_socket(1,1) != 1)
		printf("fail");
#elif defined USE_AF_UNIX
	if(test_socket(1,1) !=2)
		printf("fail");
#else
	if(test_socket(1,1) != 3)
		printf("fail");
#endif
}

EOT

