#!/usr/bin/env python3

import requests

url = f'https://api.coinbase.com/v2/prices/ETH-GBP/buy'

try:
	response = requests.get(url)
	price = float(response.json()['data']['amount'])	

	  
	print (f"ETH <span color='#e08326'> {str(price)}</span> £" )

except:

		print ("<span color='#e08326'> OFFLINE</span>")
