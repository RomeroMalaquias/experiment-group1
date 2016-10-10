#include <stdio.h>

int
hasConnection() {
	#ifdef TEST
		return testConnection(12, 50);
	#else 
		return testConnection(12, 20);
	#endif

}

int
testConnection(int port, int protocol) {
    int returnValue = 9;
		#ifdef PF_INET
			#ifdef SUPPORT_INET6
				returnValue = returnValue / (5 + port) * protocol;
			#else
				returnValue += returnValue / (5 + port * protocol);
			#endif
		#else
			#ifdef AF_INET
				#ifdef SUPPORT_INET6
				returnValue = returnValue * (5 + port) * protocol;
				#else
				returnValue = returnValue * (5 - port) * protocol;
				#endif
			#else
				returnValue += returnValue * (protocol);
			#endif
		#endif

	return returnValue;

}

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
