rm /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPScan.c
rm /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPParser.c
rm /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPTest.c


cat <<EOT >> /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPParser.c
#include <stdio.h>
#include <string.h>
#include "xmlmemory.h"
#include "nanoftp.h"

char adp[3] =  "abc";
char portp[3] =  "def";
int connection_created = 2;

EOT

sed '/#include/d' /home/experimento/Experimento/Worskpace/LIBXML2/Task2/Task2/xmlNanoFTPParser.c >> /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPParser.c


cat <<EOT >> /home/experimento/Experimento/Test/LIBXML2/xmlNanoFTPParser.c

int sprintf2(char* buf, char* some_string, int bit, int bit2, int bit3, int bit4, int bit5, int bit6) {
if (bit  != 97 || bit2  != 98 || bit3  != 99 || bit4  != 100 || bit5  != 100 || bit6 != 101)
printf("Fail");

return 1;
}

int snprintf2(char* buf, int size, char* some_string, int bit, int bit2, int bit3, int bit4, int bit5, int bit6) {
if (bit  != 97 || bit2  != 98 || bit3  != 99 || bit4  != 100 || bit5  != 100 || bit6 != 101)
printf("Fail");
return 2;
}

int fnprintf(char* buf, int size, char* some_string, int bit, int bit2, int bit3, int bit4, int bit5, int bit6) {
if (bit  != 97 || bit2  != 98 || bit3  != 10 || bit4  != 100 || bit5  != 1 || bit6 != 101)
printf("Fail");
return 3;
}
void main() {
	xmlNanoFTPCtxtPtr test = malloc(sizeof(xmlNanoFTPCtxtPtr));
test->dataFd = 0;
int func = xmlNanoFTPGetConnection(&test);
#ifdef HAVE_FNPRINTF
if (func !=3)
printf("fail 1\n ");
#elif defined HAVE_SPRINTF
if (func !=1)
printf("fail 2\n");
#else
if (func !=2)
printf("fail 3\n");
#endif
}

EOT

