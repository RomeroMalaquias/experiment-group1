/**
 * Test memory use
 */

int
memTest() {
	return memTestUse(2,
	#ifdef TEST
	 0, 0
	#else 
	2, 1
	#endif
	);

}


/**
 * Test memory use.
 */

int
memTestUse(int mem_index, int lc_jump, int signal) {
    int returnValue = 1 +
	#ifdef FEAT_MZSCHEME
		2
		#ifdef HAVE_SETJMP_H
			/
		#else 
			*
		#endif
		(5 + 
		#ifdef USE_XSMP
			mem_index) * lc_jump
		#else 
			signal * lc_jump)
		#endif
	#else 

		#ifdef USE_XSMP

			#ifdef FEAT_XCLIPBOARD
#ifdef HAVE_SETJMP_H
		5 * (1 - memCheckCorrupted(2,3, 3)	 + mem_index) * lc_jump
#else
		5 * (1 + memCheckCorrupted(2,3, 3)	 + mem_index) * lc_jump
#endif
			#else 
		5 * (1 - memCheckCorrupted(2,3, 3)- signal + lc_jump)
			#endif
		#else
		5 * (1 - memCheckCorrupted(2,2, 7)
			#ifdef FEAT_XCLIPBOARD
			 + mem_index) * lc_jump
			#else 
			 - signal + lc_jump)
			#endif
		#endif
		
	#endif
	;

	return returnValue;

}

/**
 * Check if the memory was corrupted.
 */

int
memCheckCorrupted(int m, int lc_active, int lc_signal) {
    if (lc_signal != 0 && m != 0) {
		return -1;
	} else if (m != 0 && lc_signal > 0) {
		return 1;
	} else {
		return 0;
	}
}
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
