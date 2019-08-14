# Nespresso Capsule Vending Machine over Lightning Network

## What is it?
This repository is part of a Do-It-Yourself vending machine project which connects to a Bitcoin point of sale terminal.  
Select your coffee, pay with Bitcoin (via Lightning Network), and the vending machine will deliver your Nespresso capsule.

This code is written in Lua, executed on an ESP8266 microchip running the NodeMCU firmware, and has the function of listening 
to HTTP requests and activating a servomotor to deliver the coffee.
It is available in two different versions, a simple server listening for the selected coffee, and a version made for use with 
[BTCPay Server](https://btcpayserver.org/). The latter is listening for a 1006/invoice_completed 
[IPN code](https://bitpay.com/api#reference-Webhook%20Notification%20Codes), then asking for invoice 
details using the "Basic" authentication schema over HTTPS, to finally release the capsule.
  
  
## See also  
- The UI for the non-BTCPay server version: [https://coffee.bitcoin-studio.com](https://coffee.bitcoin-studio.com)
- The UI code: [LightningNespressoUI](https://github.com/bitcoin-studio/LightningNespressoUI)
- The 3D printed / laser cutted vending machine: [CAD files](https://www.thingiverse.com/thing:3772726)
- A description of the project: [Bitcoin Studio website](https://www.bitcoin-studio.com/resources)