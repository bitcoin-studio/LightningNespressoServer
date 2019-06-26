# Nespresso Capsule Vending Machine over Lightning Network

## What is it?
A 3D printed / laser cutted vending machine made by [Yoctopuce](http://www.yoctopuce.com/EN/article/an-automatic-nespresso-capsule-dispenser)
and customized with the help of the [MILL FabLab](www.mill.pt) and [Monica Pedro](https://www.linkedin.com/in/monicacpedro/).

Server code written in Lua for the ESP8266 microchip running the NodeMCU firmware.

It comes in two different flavors, a simple server listening for the selected coffee, and a version made for use with 
[BTCPay Server](https://btcpayserver.org/). The latter is listening for a 1006/invoice_completed 
[IPN code](https://bitpay.com/api#reference-Webhook%20Notification%20Codes), then asking for invoice 
details using the "Basic" authentication schema over HTTPS.

The vending machine finally delivers the Nespresso capsule of your choice.
  
  
## See also  
- The UI for the simple server: [LightningNespressoUI](https://github.com/bitcoin-studio/LightningNespressoUI)
- The 3D printed / laser cutted vending machine: [Yoctopuce](http://www.yoctopuce.com/EN/article/an-automatic-nespresso-capsule-dispenser)