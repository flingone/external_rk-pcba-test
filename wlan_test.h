#ifndef __WLAN_TEST_H_
#define __WLAN_TEST_H_
void* wlan_test(void* argv);
struct wlan_msg {
	int result;
	int x;
	int y;
	int w;
	int h;
	char *ssid;
};

#endif
