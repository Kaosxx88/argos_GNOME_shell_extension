temp=$(cat /sys/class/thermal/thermal_zone0/temp | awk '{print $1/1000 }')

cpu=$(top -bn1 | grep %Cpu | awk {'print $2 + $3'})

lef_ram=$(free -m | grep Mem | awk '{print $2-$3 }')

left_disk_space=$(df -h |grep nvme0n1p1 | awk '{print $4}')

echo "CPU <span color='#e08326'> $cpu </span>%   Temp <span color='#e08326'> $temp </span>°C    Free Ram <span color='#e08326'> ${lef_ram} </span> MB    Disk <span color='#e08326'> ${left_disk_space%?} </span> G" 


