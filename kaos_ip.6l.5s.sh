
lan_ip=$(ip -4  addr show enp0s31f6 |  grep -oP '(?<=inet\s)\d+(\.\d+){3}')

wlan_ip=$(ip -4  addr show wlp4s0 |  grep -oP '(?<=inet\s)\d+(\.\d+){3}')

wlan_ssid=$(nmcli | grep wlp4s0: | awk {'print$4'})

if [ -z "$wlan_ip" ]
then
      wlan_ip_check="Disconnected"
else
      wlan_ip_check=$wlan_ip
fi

if [ -z "$lan_ip" ]
then
      lan_ip_check="Disconnected"
else
      lan_ip_check=$lan_ip
fi

if [ -z "$wlan_ssid" ]
then
      wlan_ssid_check=""
else
      wlan_ssid_check="SSID  <span color='#e08326'> $wlan_ssid</span>"
fi

echo "LAN IP  <span color='#e08326'> $lan_ip_check</span>   WLAN IP  <span color='#e08326'> $wlan_ip_check</span>  $wlan_ssid_check  " 









