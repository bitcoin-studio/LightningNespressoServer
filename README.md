# Nespresso Capsule Vending Machine over Lightning Network

## What is it?
A 3D printed / laser cutted vending machine made by [Yoctopuce](http://www.yoctopuce.com/EN/article/an-automatic-nespresso-capsule-dispenser)
and customized with the help of the [MILL FabLab](www.mill.pt) and Monica Pedro.

Server code written in Lua for the ESP8266 microchip running the NodeMCU firmware.

The server is 

is using the "Basic" authentication schema over HTTPS.



## Server
Lua server listen to incoming message, if BOLT 11 invoice is paid the dispenser delivers the Nespresso capsule of your choice.
  
  
## See also  
- The UI: [LightningNespressoUI](https://github.com/bitcoin-studio/LightningNespressoUI)
- The 3d printed / laser cutted capsule dispenser: [Yoctopuce](http://www.yoctopuce.com/EN/article/an-automatic-nespresso-capsule-dispenser)