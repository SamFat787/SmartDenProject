# SmartDenProject
## Samuel Fatuga

https://github.com/SamFat787/SmartDenProject

## Introduction

For our capstone project my partners (Boswell and Bobby) have decided to create a model smarthome. The goal was to make a project for Makerkids, which helps bridge to familiarize young kids with technology. Our intention was to make a project that would use sensors that the kids are familiar with so they can in turn hack or interact with the project. Our smarthome will be interactive with an Android application that would allow you to interact with the sensors. As far as backend, we plan on storing user settings our database. These settings include: temperature readings, record of the time the lights are on/off, and also store the number of sensors a user would have in their smarthome. For my part, I chose an  RGB LED that would allow the user to change a room light to what every they desire. My controller of choice is a STM32 blue pill which is about the size of a Rasberry Pi and with the capabilities of an Arduino Uno. The blue pill has a faster processesor and larger flash than the Arduino and is less expensive.  





## Materials Needed
1. BreadBoard
2. YSL-R596CR3G4B5C-C10 https://microcontrollershop.com/product_info.php?products_id=3471&osCsid=t4jclqm2gnqlotp2flii7k57q6
3. STM32F103C8T6 https://www.amazon.ca/STM32-Blue-Pill-Genuine-STM32F103C8T6/dp/B07S2VF1PZ/ref=sr_1_1?crid=E3DW919LGX6T&keywords=stm32+blue+pill&qid=1575788640&sprefix=stm32+%2Caps%2C179&sr=8-1
4. 3x 220ohm resistors(you can used 100-1k resistors for the LED)
5. ST-Link
6. Arduino IDE https://www.arduino.cc/en/main/software
7. 4 pin header
8. 2x 20 pin headers


Total cost of the project came to around $65CAD. This included a purchase of the LED and the Blue Pill which comes package with a St-Link. The Breadboard and resistors I already owned since first year as they were part of my Humber tool kit. The Arduino IDE can be downloaded for free.

## Time Commitment

The most time consuming aspect of the project was waiting for the materials to arrive.  The Blue Pill was not shipped from the Amazon warehouse but from a third party seller, and the LED came from the US and was held at customs for some days. These delaye set me back a bit.  But assuming you have the parts, the projected can be completed within a couple hours with this break down:

1. half hour to Solder blue pill pins
2. half hour to solder PCB
3. 10-15 mins to program on IDE
4. 30 mins to build and complete your circuit board



## Assembly

Here's an image of the breadboard design of the circuit connection. As you may notice the Fritzing image does not include the LED, that is because my printed PCB would not fit the legs of my LED. In place of the LED I put a four pin header, which the LED would accomodate the LED. From left to right on the header the connection is as follows: Red leg to pin A1, common cathode to ground, Blue leg to A2, and green leg to A3.

![breadboard](https://github.com/SamFat787/SmartDenProject/blob/master/Screen%20Shot%202019-11-19%20at%202.33.03%20PM.png?raw=true)

[link to file](https://github.com/SamFat787/SmartDenProject/blob/master/PCB-CENG%20318.fzz)

## PCB/Soldering
Here is an image of the PCB that shows the connection of the LED legs to the pins of the BluePill. Each leg of the LED require resistors (100ohm to 1kohm) connected in series. A printed soldered PCB is attached below.
![PCB](https://github.com/SamFat787/SmartDenProject/blob/master/Screen%20Shot%202019-11-26%20at%201.56.32%20PM.png?raw=true)

![Topview](https://github.com/SamFat787/SmartDenProject/blob/master/IMG_2176.jpg?raw=true)

![bottom view](https://github.com/SamFat787/SmartDenProject/blob/master/IMG_2087.jpg?raw=true)

## Unit Testing
One of the good things about the Blue Pill is that it can be programmed with Arduino IDE, which uses C++ like syntax. In order to use the controller with the IDE you will first need to at add the following to "Additional Boards manager" which can be accessed by File->Preferences: http://dan.drown.org/stm32duino/package_STM32duino_index.json . This allows you to add the board to the list of programmable controllers for the IDE.

Each LED leg is initialized to a pin, then the pin is set as an output. In the main loop the function setColor() cycles through a combination of each color, this allows us to display colors other than Red Green and Blue. If you notice the pins in the code start with PA, but on the board they start with only start with an A. Apperently thats to save space on the board, to program the controller you will need to write the full name of the pin. Below is an image of the Breadboard and the the working PCB.   
![Arduino code](https://github.com/SamFat787/SmartDenProject/blob/master/Screen%20Shot%202019-11-26%20at%201.20.16%20PM.png?raw=true)

![Breadboard](https://github.com/SamFat787/SmartDenProject/blob/master/Webp.net-resizeimage.jpg?raw=true)

![Working PCB](https://github.com/SamFat787/SmartDenProject/blob/master/thumbnail_IMG_2083.jpg?raw=true)
