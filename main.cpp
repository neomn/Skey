#include <iostream> 
#include <FindDevices.h>
using namespace std;

int main() {

    // get a list of all devices in local network
    FindDevices f = FindDevices();
    string tmp = f.search(); 
    cout << tmp << endl;

    // implemen ssh connection to desired device
    
    // disable keyboard on host 
    
    // get pressed key
    
    // inject pressed key on client
    

    return 0;
}


