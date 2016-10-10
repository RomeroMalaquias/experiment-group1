sed '/#define/d' /home/experimento/Experimento/Worskpace/LIBXML2/Task3/Task3/xmlNanoFTPTest.c > /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c	

cat <<EOT >> /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c	
void main () {
#ifdef TEST
	#ifdef SUPPORT_IP6
		#ifdef PF_INET
			if (xmlNanoFTPTest() != 13600) {
				printf("fail");
			}
	
		#else
			if (xmlNanoFTPTest() != 16) {
				printf("fail");
			}
	#endif
	#else
		#if defined AF_INET6 

			if (xmlNanoFTPTest() != 2100) {
				printf("fail");
			}

		#else
			if (xmlNanoFTPTest() != 154) {
				printf("fail");
			}
		#endif

	#endif
#else
	#ifdef SUPPORT_IP6
		#ifdef PF_INET
			if (xmlNanoFTPTest() != 5440) {
				printf("fail");
			}	
		#else
			if (xmlNanoFTPTest() != 3856) {
				printf("fail");
			}	
		#endif
	#else 		
		if (xmlNanoFTPTest() != 3514) {
			printf("fail");
		}
	#endif
#endif
}
EOT


gcc -o bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c -w -D SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -U PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -D STANDALONE -U DEBUG_FTP -U PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -U PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -D PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -D STANDALONE -D DEBUG_FTP -U PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -D STANDALONE -D DEBUG_FTP -D PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -D PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -U PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -D STANDALONE -U DEBUG_FTP -U PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -U PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -D PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -D STANDALONE -D DEBUG_FTP -U PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -D STANDALONE -D DEBUG_FTP -D PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -D PF_INET -U TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -U PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -D STANDALONE -U DEBUG_FTP -U PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -U PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -D PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -D STANDALONE -D DEBUG_FTP -U PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -D STANDALONE -D DEBUG_FTP -D PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -D SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -D PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -U PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -D STANDALONE -U DEBUG_FTP -U PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -U PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -D PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -D STANDALONE -D DEBUG_FTP -U PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -D STANDALONE -D DEBUG_FTP -D PF_INET -D TEST
./bla
gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -D PF_INET -D TEST
./bla

gcc -o ./bla /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c  -w -U SUPPORT_IP6 -U STANDALONE -D DEBUG_FTP -D AF_INET6 -D TEST
./bla


gcc -o test.o /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c -w -D SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -U PF_INET -U TEST
./test.o
gcc -o test.o /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest2.c /home/experimento/Experimento/Test/LIBXML2/nanoftp.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.h /home/experimento/Experimento/Test/LIBXML2/xmlmemory.c -w -U SUPPORT_IP6 -U STANDALONE -U DEBUG_FTP -D PF_INET -D TEST -D AF_INET6
./test.o