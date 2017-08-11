#include "client_acceptor.h"
#include "handler.h"

int main()
{
    Client_Acceptor peer_acceptor;
    if (peer_acceptor.open (ACE_INET_Addr (8082),ACE_Reactor::instance()) == -1)
                ACE_ERROR_RETURN ((LM_ERROR, "%p\n", "open"), -1);

    ACE_Reactor::instance()->run_event_loop();
}
