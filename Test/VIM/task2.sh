cat <<EOT >> /home/experimento/Experimento/Test/VIM/task2test.c
#include <stdio.h>
#include <string.h>
#include "os_unixx.h"	    /* unix includes for os_unix.c only */
int directory = 1;
int vim_regexec2(int start, int name, int col) {
#ifdef WIN_32
if (start !=0|| name != 1 || col !=0)
printf("fail");
#else
if (start !=0|| name != 1 || col !=1)
printf("fail");
#endif
return 2;
}

int vim_regexec64 (int start, int name, int col) {
if (start !=3|| name != 1 || col !=0)
printf("fail");
return 1;
}



EOT

sed '/#include/d' /home/experimento/Experimento/Worskpace/VIM/Task2/Task2/regExec.c >> /home/experimento/Experimento/Test/VIM/task2test.c

cat <<EOT >> /home/experimento/Experimento/Test/VIM/task2test.c
void main() {
int test = unix_expandpath("A/", 2, 3);
#ifdef WIN_64
if (test !=1)
printf("fail");
#else
if (test !=2)
printf("fail");
#endif

}

EOT

gcc -o /home/experimento/Experimento/Test/VIM/bla /home/experimento/Experimento/Test/VIM/task2test.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w
/home/experimento/Experimento/Test/VIM/bla
/home/experimento/Experimento/Test/VIM/bla
gcc -o /home/experimento/Experimento/Test/VIM/bla /home/experimento/Experimento/Test/VIM/task2test.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D WIN_32
/home/experimento/Experimento/Test/VIM/bla
rm /home/experimento/Experimento/Test/VIM/bla
gcc -o /home/experimento/Experimento/Test/VIM/bla /home/experimento/Experimento/Test/VIM/task2test.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D WIN_64
/home/experimento/Experimento/Test/VIM/bla
rm /home/experimento/Experimento/Test/VIM/bla
rm /home/experimento/Experimento/Test/VIM/task2test.c