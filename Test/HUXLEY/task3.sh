sed '/#define/d' /home/experimento/Experimento/Worskpace/HUXLEY/Warm3/Warm3/testConnection.c > /home/experimento/Experimento/Test/HUXLEY/testConnection.c

cat <<EOT >> /home/experimento/Experimento/Test/HUXLEY/testConnection.c
void main () {
#ifdef TEST
		#ifdef PF_INET
			#ifdef SUPPORT_INET6
				if (hasConnection() !=0)
					printf("fail");
			#else
				if (hasConnection() !=9)
					printf("fail");
			#endif
		#elif defined SUPPORT_INET6
			#ifdef AF_INET
				if (hasConnection() !=7650)
					printf("fail");
			#else
				if (hasConnection() !=459)
					printf("fail");
			#endif
		#elif defined AF_INET
			if (hasConnection() !=-3150)
				printf("fail");
		#else
			if (hasConnection() !=459)
				printf("fail");

		#endif
#else
	#ifdef PF_INET
			#ifdef SUPPORT_INET6
				if (hasConnection() !=0)
					printf("fail");
			#else
				if (hasConnection() !=9)
					printf("fail");
			#endif
	#elif defined SUPPORT_INET6
			#ifdef AF_INET
				if (hasConnection() !=3060)
					printf("fail");
			#else
				if (hasConnection() !=189)
					printf("fail");
			#endif
	#elif defined AF_INET
			if (hasConnection() !=-1260)
				printf("fail");			
	#endif
#endif

}
EOT


gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -D TEST -D PF_INET -D AF_INET -D SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -D TEST -U PF_INET -D AF_INET -D SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -D TEST -U PF_INET -D AF_INET -U SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -D TEST -U PF_INET -U AF_INET -D SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -D TEST -U PF_INET -U AF_INET -U SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -D TEST -D PF_INET -U AF_INET -D SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -D TEST -D PF_INET -D AF_INET -U SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -U TEST -D PF_INET -D AF_INET -D SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -U TEST -U PF_INET -D AF_INET -D SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -U TEST -U PF_INET -D AF_INET -U SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -U TEST -U PF_INET -U AF_INET -D SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -U TEST -U PF_INET -U AF_INET -U SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -U TEST -D PF_INET -U AF_INET -D SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla

gcc -o /home/experimento/Experimento/Test/HUXLEY/bla /home/experimento/Experimento/Test/HUXLEY/testConnection.c -w -U TEST -D PF_INET -D AF_INET -U SUPPORT_INET6
/home/experimento/Experimento/Test/HUXLEY/bla
rm /home/experimento/Experimento/Test/HUXLEY/bla
