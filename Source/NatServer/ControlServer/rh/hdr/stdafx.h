#ifndef __STDAFX_H__
#define __STDAFX_H__

#ifndef __cplusplus
#error "This is a C++ header file; it requires C++ to compile."
#endif

//C++
#include <iostream>
#include <fstream>
#include <sstream>
#include <algorithm>
#include <list>
#include <vector>
#include <map>
#include <stdlib.h>
#include <cstdlib>
#include <string>
#include <utility>
#ifdef WIN32
#include <tchar.h>
#include <hash_map>
#else
#if (__GNUC__ > 4) || (__GNUC__ == 4  && __GNUC_MINOR__ >= 2)
#include <ext/hash_map>
using namespace __gnu_cxx;
#else
#include <hash_map.h>
#endif
#include <arpa/inet.h>
#endif // WIN32

using namespace std;


//ACE
#include <ace/Basic_Types.h>
#include <ace/Log_Msg.h>
#include <ace/Log_Priority.h>
#include <ace/Time_Value.h>
#include "ace/Thread_Mutex.h"
#include "ace/Guard_T.h"
#include "ace/Condition_T.h"
#include "ace/Svc_Handler.h"
#include "ace/OS.h"
#include "ace/Min_Max.h"
#include "ace/Signal.h"
#include <ace/INET_Addr.h>
#include "ace/SOCK_Stream.h"
#include "ace/Message_Queue.h"
#include <ace/Thread_Manager.h>
#include <ace/INET_Addr.h>
#include <ace/Reactor.h>
#include <ace/Event_Handler.h>
#include "ace/Connector.h"
#include "ace/SOCK_Connector.h"
#include <ace/Recursive_Thread_Mutex.h>
#include "ace/Timer_Queue_Adapters.h"
#include "ace/Timer_Heap.h"

//BOOST
#include <boost/regex.hpp>
#include <boost/lexical_cast.hpp>
#include <boost/shared_ptr.hpp>

#include <boost/algorithm/string/trim.hpp>
#include <boost/algorithm/string/split.hpp>

#include <boost/spirit/core.hpp>
#include <boost/spirit/core/non_terminal/rule.hpp>
#include <boost/spirit/actor/increment_actor.hpp>
#include <boost/spirit/actor/decrement_actor.hpp>
#include <boost/spirit/actor/push_back_actor.hpp>
#include <boost/spirit/actor/assign_actor.hpp>
#include <boost/spirit/actor/clear_actor.hpp>
#include <boost/spirit/actor/insert_key_actor.hpp>
#include <boost/spirit/actor/assign_key_actor.hpp>
#include <boost/spirit/actor/insert_at_actor.hpp>

#include <boost/multi_index_container.hpp>
#include <boost/multi_index/member.hpp>
#include <boost/multi_index/ordered_index.hpp>
#include <boost/multi_index/hashed_index.hpp>

#include "boost/algorithm/string/erase.hpp"
#include "boost/algorithm/string/trim.hpp"
#include "boost/algorithm/string/split.hpp"
#include "boost/algorithm/string/replace.hpp"
#include <boost/algorithm/string.hpp>

typedef long long int64;
typedef int int32;
typedef short int16;
typedef char int8;

typedef unsigned long long uint64;
typedef unsigned int uint32;
typedef unsigned short uint16;
typedef unsigned char uint8;


#endif // __STDAFX_H__
