sed '/#define/d' /home/experimento/Experimento/Worskpace/VIM/Task3/Task3/memTest.c > /home/experimento/Experimento/Test/VIM/memTest2.c

cat <<EOT >> /home/experimento/Experimento/Test/VIM/memTest2.c	
void main () {
#ifdef TEST
	#ifdef HAVE_SETJMP_H
		#ifdef FEAT_XCLIPBOARD
			if (memTest() != 1)
				printf("fail");
		#else
			if (memTest() != 11)
				printf("fail");
		#endif
	#else
		#ifdef FEAT_XCLIPBOARD
			if (memTest() != 1)
				printf("fail");
		#else
		if (memTest() != 11)
			printf("fail");
		#endif
	#endif
#else
	#ifdef HAVE_SETJMP_H
		#ifdef FEAT_XCLIPBOARD
			#ifdef FEAT_MZSCHEME
				if (memTest() != 1)
					printf("fail");	
				#else
				if (memTest() != 41)
					printf("fail");
				#endif
			#elif defined FEAT_MZSCHEME
				if (memTest() != 1)
				printf("fail");	
		#else
			if (memTest() != 16)
				printf("fail");
		#endif
	#elif defined FEAT_XCLIPBOARD
		#ifdef USE_XSMP
			#ifdef FEAT_MZSCHEME
					if (memTest() != 29)
						printf("fail");
			#else
				
					if (memTest() != 21)
						printf("fail");
				
			#endif
		#else
			#ifdef FEAT_MZSCHEME
				if (memTest() != 15)
					printf("fail");
			#else
				if (memTest() != 41)
					printf("fail");
			#endif
		#endif		
	#elif (defined USE_XSMP && defined FEAT_XCLIPBOARD)
		printf("oi");
		if (memTest() != 21)
			printf("fail");
	#endif
#endif
}
EOT

gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -D FEAT_MZSCHEME -D TEST  
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST  
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST  
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -U FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -U TEST  
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -D FEAT_MZSCHEME -U TEST  
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -D TEST  
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST  
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -D FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -D FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -D HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -D FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -D FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -D FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -U FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -D FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -U FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -D FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -U USE_XSMP -U FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -D FEAT_MZSCHEME -U TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -D FEAT_MZSCHEME -D TEST 
./bla
gcc -o bla /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h  -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -D FEAT_MZSCHEME -D TEST
./bla

gcc -o test.o /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h -w -U HAVE_SETJMP_H -U FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -U TEST
./test.o

gcc -o test.o /home/experimento/Experimento/Test/VIM/memTest2.c /home/experimento/Experimento/Test/VIM/os_unixx.h -w -U HAVE_SETJMP_H -D FEAT_XCLIPBOARD -D USE_XSMP -U FEAT_MZSCHEME -U TEST
./test.o



