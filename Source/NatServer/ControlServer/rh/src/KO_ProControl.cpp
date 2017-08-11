#include "KO_ProControl.h"
using namespace boost;

bool KO_ProControl::Process(const char *data, int len)
{
	std::vector<std::string> m_vecItems;
	string strData(data, len);
	std::string cmd;

	cout << "Recv Data: " << data << endl;

	boost::regex re("@@");
	boost::sregex_token_iterator p(strData.begin(),strData.end(),re,-1);
	boost::sregex_token_iterator end;

	while (p != end) {
		m_vecItems.push_back(*p++);
	}

	//iptables -t nat -I PREROUTING -i $LAN_INTERFACE -s 172.16.7.9 -j ACCEPT
	//iptables -t filter -I FORWARD -i $LAN_INTERFACE -s 172.16.7.9 -j ACCEPT
	//iptables -t nat -I PREROUTING -i $LAN_INTERFACE -m mac --mac-source bc:96:80:38:c7:b0 -j ACCEPT
	//iptables -t filter -I FORWARD -i $LAN_INTERFACE -m mac --mac-source bc:96:80:38:c7:b0 -j ACCEPT


	if(m_vecItems.at(KONY_DATA_ACTION) == "ACCEPT")	 {
		cmd.assign("iptables -t nat -I PREROUTING -i $LAN_INTERFACE -m mac --mac-source ");
		cmd.append(m_vecItems.at(KONY_DATA_MAC));
		cmd.append(" -j ACCEPT;");
		system(cmd.c_str());
		cout << "system: " << cmd << endl;


		cmd.assign("iptables -t filter -I FORWARD -i $LAN_INTERFACE -m mac --mac-source ");
		cmd.append(m_vecItems.at(KONY_DATA_MAC));
		cmd.append(" -j ACCEPT;");
		system(cmd.c_str());
		cout << "system: " << cmd << endl;
	}
		
	return true;
}