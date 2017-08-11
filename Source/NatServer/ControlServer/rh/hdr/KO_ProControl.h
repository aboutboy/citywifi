#ifndef __KO_PRO_CONTROL_H__
#define __KO_PRO_CONTROL_H__

#include "stdafx.h"

class KO_ProControl
{
	
	enum KONY_DATA_TYPE
	{
		KONY_DATA_HEADER = 0,
		KONY_DATA_ACTION,
		KONY_DATA_IP,
		KONY_DATA_MAC,
		KONY_DATA_TIME,
		KONY_DATA_SPEEX
	};
	
public:
	KO_ProControl() {}

	~KO_ProControl() {}

public:
	bool Process(const char *data, int len);
};

#endif /* __KO_PRO_CONTROL_H__ */

