#include <stdbool.h>
#include <stdio.h>
#include <string.h>

int  D_HANDSHAKE = 1;

void msg (int handshake, char msg[], char return_msg[], char username[], char type_set[])
{
	int is_authenticated = handshake;
#ifdef ENABLE_DEF_AUTH
        is_authenticated = is_authenticated && return_msg != "deferred";
#endif
#ifdef PLUGIN_DEF_AUTH
        is_authenticated = is_authenticated && type_set != "[CN SET]";
#endif
#ifdef ENABLE_OCC
    is_authenticated = is_authenticated || (return_msg == "succeeded" && strlen(username) > 0);
#endif
    if (is_authenticated)
	{
		printf("authentication succeeded");
	} else {
		printf("authentication failed");
	}

}

static void check_auth (int session, char user, char auth_string[])
{
  if (session){
#ifdef ENABLE_DEF_AUTH
	  msg (D_HANDSHAKE, "TLS: Username/Password authentication %s for username '%s' %s",
  	       auth_string ? "deferred" : "succeeded",
	       user,
	       "[CN SET]");
#else
	  msg (D_HANDSHAKE, "TLS: Username/Password authentication %s for username '%s' %s","succeeded",
  	       user, "");
  }
#endif
}
