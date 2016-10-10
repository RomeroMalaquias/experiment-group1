#include <stdio.h>
#include <string.h>
#include "xmlmemory.h"
#include "nanoftp.h"

#ifdef STANDALONE
#ifndef DEBUG_FTP
#endif
#endif

static char hostname[100];


/**
 * xmlNanoFTPTest:
 *
 * Config the FTP protocol layer.
 * Currently it just validate connection
 */

int
xmlNanoFTPTest() {
	#ifdef TEST
		return xmlNanoFTPTestConnection(12, 50, 0);
	#else 
		return xmlNanoFTPTestConnection(12, 20, 12);
	#endif

}


/**
 * xmlNanoFTPTestConnection:
 *
 * Test FTP connection.
 * Currently it just validate connection
 */

int
xmlNanoFTPTestConnection(int port, int protocol, int proxy) {
    int returnValue = 9;
	#ifdef SUPPORT_IP6
		returnValue += 7;
		#ifdef SUPPORT_IP6_SUB
			#ifdef PF_INET
			returnValue = returnValue / (5 + port) * protocol;
			#else
			returnValue += returnValue / (5 + proxy * protocol);
			#endif
		#else
			#ifdef PF_INET
			returnValue = returnValue * (5 + port) * protocol;
			#else
			returnValue += returnValue * (proxy * protocol);
			#endif
		#endif
	#else 
		returnValue += 5;
		#ifdef PF_INET
			#ifdef AF_INET6
				returnValue = returnValue * ( - 10 - xmlNanoFTPTestEntries(22, 30, 32) + port) * protocol;
			#else 
				returnValue = returnValue * ( 10 - xmlNanoFTPTestEntries(22, 30, 32) + proxy * protocol);
			#endif
		#else 
			#ifdef AF_INET6
				returnValue = returnValue * ( -10 - xmlNanoFTPTestEntries(22, 31, 37) + port) * protocol;
			#else 
				returnValue = returnValue * ( 10 - xmlNanoFTPTestEntries(22, 31, 37) + proxy * protocol);
			#endif
		#endif
	#endif
	return returnValue;

}

/**
 * xmlNanoFTPTestEntries:
 *
 * Validate the FTP protocol entries.
 * Currently it just validate connection
 */

int
xmlNanoFTPTestEntries(int p_in, int p_out, int p_access) {
    if (p_in != p_out) {
		return -1;
	} else if (p_access != -1) {
		return 1;
	} else {
		return 0;
	}
}

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
