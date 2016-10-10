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
				returnValue = returnValue * (5 + port) * protocol;
			#else
				returnValue += returnValue * (protocol);
			#endif
		#endif

	return returnValue;

}

