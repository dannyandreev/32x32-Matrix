EESchema Schematic File Version 4
LIBS:BOMPanelClipon-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J1
U 1 1 5FEA94D2
P 1500 4000
F 0 "J1" H 1550 4517 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 1550 4426 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 1500 4000 50  0001 C CNN
F 3 "~" H 1500 4000 50  0001 C CNN
	1    1500 4000
	1    0    0    -1  
$EndComp
$Comp
L BOMPanelClipon-rescue:NodeMCU-32S-LolomoloKiCADSymLib U1
U 1 1 5FEB1A58
P 5500 4200
F 0 "U1" H 5500 5165 50  0000 C CNN
F 1 "NodeMCU-32S" H 5500 5074 50  0000 C CNN
F 2 "LolomoloKiCADLib:NODEMCU-32S_ESP32" H 5000 4200 50  0001 C CNN
F 3 "" H 5000 4200 50  0001 C CNN
	1    5500 4200
	1    0    0    -1  
$EndComp
Text GLabel 1300 3700 0    50   Input ~ 0
R1
Text GLabel 1300 3800 0    50   Input ~ 0
B1
Text GLabel 1300 4000 0    50   Input ~ 0
B2
Text GLabel 1300 3900 0    50   Input ~ 0
R2
Text GLabel 1800 3700 2    50   Input ~ 0
G1
Text GLabel 1800 3900 2    50   Input ~ 0
G2
Text GLabel 1800 4100 2    50   Input ~ 0
B
Text GLabel 1800 4300 2    50   Input ~ 0
LAT
Text GLabel 1300 4100 0    50   Input ~ 0
A
Text GLabel 1300 4200 0    50   Input ~ 0
C
Text GLabel 1300 4300 0    50   Input ~ 0
CLK
Text GLabel 1300 4400 0    50   Input ~ 0
OE
Wire Wire Line
	1800 3800 2050 3800
Wire Wire Line
	2050 3800 2050 4000
Wire Wire Line
	1800 4400 2050 4400
Connection ~ 2050 4400
Wire Wire Line
	2050 4400 2050 4500
Wire Wire Line
	1800 4200 2050 4200
Connection ~ 2050 4200
Wire Wire Line
	2050 4200 2050 4400
Wire Wire Line
	1800 4000 2050 4000
Connection ~ 2050 4000
Wire Wire Line
	2050 4000 2050 4200
$Comp
L power:GND #PWR01
U 1 1 5FEB6838
P 2050 4500
F 0 "#PWR01" H 2050 4250 50  0001 C CNN
F 1 "GND" H 2055 4327 50  0000 C CNN
F 2 "" H 2050 4500 50  0001 C CNN
F 3 "" H 2050 4500 50  0001 C CNN
	1    2050 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	10800 3650 10800 3850
Connection ~ 10800 4250
Wire Wire Line
	10800 4250 10800 4400
Connection ~ 10800 4050
Wire Wire Line
	10800 4050 10800 4250
Connection ~ 10800 3850
Wire Wire Line
	10800 3850 10800 4050
$Comp
L power:GND #PWR018
U 1 1 5FEB96BA
P 10800 4400
F 0 "#PWR018" H 10800 4150 50  0001 C CNN
F 1 "GND" H 10805 4227 50  0000 C CNN
F 2 "" H 10800 4400 50  0001 C CNN
F 3 "" H 10800 4400 50  0001 C CNN
	1    10800 4400
	1    0    0    -1  
$EndComp
Text GLabel 9300 2950 0    50   Input ~ 0
B1
Text GLabel 9300 3250 0    50   Input ~ 0
B2
Text GLabel 9300 3050 0    50   Input ~ 0
R2
Text GLabel 9300 2850 0    50   Input ~ 0
G1
Text GLabel 9300 3150 0    50   Input ~ 0
G2
Text GLabel 9400 3050 2    50   Input ~ 0
R1_Out
Text GLabel 9400 3250 2    50   Input ~ 0
B1_Out
Text GLabel 9400 2850 2    50   Input ~ 0
R2_Out
Text GLabel 9400 3150 2    50   Input ~ 0
G1_Out
Text GLabel 9400 2950 2    50   Input ~ 0
G2_Out
Wire Wire Line
	9300 2850 9400 2850
Wire Wire Line
	9400 2950 9300 2950
Wire Wire Line
	9300 3050 9400 3050
Wire Wire Line
	9300 3150 9400 3150
Wire Wire Line
	9300 3250 9400 3250
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5FEC9D3D
P 8200 1900
F 0 "J4" V 8138 1612 50  0000 R CNN
F 1 "Conn_01x04_Female" V 8350 2300 50  0000 R CNN
F 2 "LolomoloKiCADLib:Conn_4pin_3.96mm_0009483046" H 8200 1900 50  0001 C CNN
F 3 "~" H 8200 1900 50  0001 C CNN
	1    8200 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	8300 1700 8300 1600
Wire Wire Line
	8200 1600 8200 1700
$Comp
L power:GND #PWR015
U 1 1 5FECC84C
P 8400 1700
F 0 "#PWR015" H 8400 1450 50  0001 C CNN
F 1 "GND" H 8405 1527 50  0000 C CNN
F 2 "" H 8400 1700 50  0001 C CNN
F 3 "" H 8400 1700 50  0001 C CNN
	1    8400 1700
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 5FECD261
P 6900 4800
F 0 "#PWR09" H 6900 4650 50  0001 C CNN
F 1 "+3V3" H 6915 4973 50  0000 C CNN
F 2 "" H 6900 4800 50  0001 C CNN
F 3 "" H 6900 4800 50  0001 C CNN
	1    6900 4800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR014
U 1 1 5FECDCD4
P 7750 700
F 0 "#PWR014" H 7750 550 50  0001 C CNN
F 1 "+5V" H 7765 873 50  0000 C CNN
F 2 "" H 7750 700 50  0001 C CNN
F 3 "" H 7750 700 50  0001 C CNN
	1    7750 700 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6900 4900 6900 4800
Wire Wire Line
	6300 4800 6400 4800
Wire Wire Line
	6400 5100 5500 5100
Wire Wire Line
	4600 5100 4600 4800
Wire Wire Line
	4600 4800 4700 4800
Wire Wire Line
	6400 4800 6400 5100
$Comp
L power:GND #PWR06
U 1 1 5FED4E63
P 5500 5250
F 0 "#PWR06" H 5500 5000 50  0001 C CNN
F 1 "GND" H 5505 5077 50  0000 C CNN
F 2 "" H 5500 5250 50  0001 C CNN
F 3 "" H 5500 5250 50  0001 C CNN
	1    5500 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 5250 5500 5100
Connection ~ 5500 5100
Wire Wire Line
	5500 5100 4600 5100
Wire Wire Line
	4300 4900 4300 4850
$Comp
L power:+5V #PWR03
U 1 1 5FED6B04
P 4300 4850
F 0 "#PWR03" H 4300 4700 50  0001 C CNN
F 1 "+5V" H 4315 5023 50  0000 C CNN
F 2 "" H 4300 4850 50  0001 C CNN
F 3 "" H 4300 4850 50  0001 C CNN
	1    4300 4850
	1    0    0    -1  
$EndComp
$Comp
L LolomoloKiCADSymLib:LSM6DS3_Breakout U3
U 1 1 5FEDBBAC
P 5550 7000
F 0 "U3" H 5700 7765 50  0000 C CNN
F 1 "LSM6DS3_Breakout" H 5700 7674 50  0000 C CNN
F 2 "LolomoloKiCADLib:LSM6DS3_Breakout" H 5650 7900 50  0001 C CNN
F 3 "" H 5650 7900 50  0001 C CNN
	1    5550 7000
	1    0    0    -1  
$EndComp
NoConn ~ 6050 6500
Wire Wire Line
	6050 6600 6150 6600
Wire Wire Line
	6150 6600 6150 6500
$Comp
L power:+3V3 #PWR016
U 1 1 5FEE1DD7
P 6150 6500
F 0 "#PWR016" H 6150 6350 50  0001 C CNN
F 1 "+3V3" H 6165 6673 50  0000 C CNN
F 2 "" H 6150 6500 50  0001 C CNN
F 3 "" H 6150 6500 50  0001 C CNN
	1    6150 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6700 6150 6700
Wire Wire Line
	6150 6700 6150 7200
$Comp
L power:GND #PWR017
U 1 1 5FEE3427
P 6150 7200
F 0 "#PWR017" H 6150 6950 50  0001 C CNN
F 1 "GND" H 6155 7027 50  0000 C CNN
F 2 "" H 6150 7200 50  0001 C CNN
F 3 "" H 6150 7200 50  0001 C CNN
	1    6150 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 6800 6250 6800
Wire Wire Line
	6050 6900 6250 6900
Wire Wire Line
	6050 7000 6250 7000
Wire Wire Line
	6050 7100 6250 7100
$Comp
L LolomoloKiCADSymLib:MicroSDCardAdaptor U2
U 1 1 5FEEA3EC
P 3000 6950
F 0 "U2" H 3728 6959 50  0000 L CNN
F 1 "MicroSDCardAdaptor" H 3728 6868 50  0000 L CNN
F 2 "LolomoloKiCADLib:MicroSDCardAdapter" H 3400 7400 50  0001 C CNN
F 3 "" H 3400 7400 50  0001 C CNN
	1    3000 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 7250 2200 7250
Wire Wire Line
	2200 7250 2200 7350
Wire Wire Line
	2300 7150 1800 7150
Wire Wire Line
	1800 7150 1800 7050
$Comp
L power:+5V #PWR04
U 1 1 5FEFE79F
P 1800 7050
F 0 "#PWR04" H 1800 6900 50  0001 C CNN
F 1 "+5V" H 1815 7223 50  0000 C CNN
F 2 "" H 1800 7050 50  0001 C CNN
F 3 "" H 1800 7050 50  0001 C CNN
	1    1800 7050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5FEFEEA5
P 2200 7350
F 0 "#PWR05" H 2200 7100 50  0001 C CNN
F 1 "GND" H 2205 7177 50  0000 C CNN
F 2 "" H 2200 7350 50  0001 C CNN
F 3 "" H 2200 7350 50  0001 C CNN
	1    2200 7350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5FEFFB02
P 6600 1900
F 0 "D1" V 6639 1783 50  0000 R CNN
F 1 "LEDO" V 6548 1783 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 6600 1900 50  0001 C CNN
F 3 "~" H 6600 1900 50  0001 C CNN
	1    6600 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 5FF00400
P 6600 1500
F 0 "R1" H 6670 1546 50  0000 L CNN
F 1 "1k5" H 6670 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6530 1500 50  0001 C CNN
F 3 "~" H 6600 1500 50  0001 C CNN
	1    6600 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1650 6600 1750
$Comp
L power:+3V3 #PWR07
U 1 1 5FF05988
P 6600 1250
F 0 "#PWR07" H 6600 1100 50  0001 C CNN
F 1 "+3V3" H 6615 1423 50  0000 C CNN
F 2 "" H 6600 1250 50  0001 C CNN
F 3 "" H 6600 1250 50  0001 C CNN
	1    6600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 1250 6600 1350
Wire Wire Line
	6600 2050 6600 2150
$Comp
L power:GND #PWR08
U 1 1 5FF08FC9
P 6600 2150
F 0 "#PWR08" H 6600 1900 50  0001 C CNN
F 1 "GND" H 6605 1977 50  0000 C CNN
F 2 "" H 6600 2150 50  0001 C CNN
F 3 "" H 6600 2150 50  0001 C CNN
	1    6600 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5FF0C6A8
P 7000 1900
F 0 "D2" V 7039 1783 50  0000 R CNN
F 1 "LEDO" V 6948 1783 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 7000 1900 50  0001 C CNN
F 3 "~" H 7000 1900 50  0001 C CNN
	1    7000 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5FF0C6AE
P 7000 1500
F 0 "R2" H 7070 1546 50  0000 L CNN
F 1 "3k3" H 7070 1455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 6930 1500 50  0001 C CNN
F 3 "~" H 7000 1500 50  0001 C CNN
	1    7000 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1650 7000 1750
Wire Wire Line
	7000 1250 7000 1350
Wire Wire Line
	7000 2050 7000 2150
$Comp
L power:GND #PWR011
U 1 1 5FF0C6BD
P 7000 2150
F 0 "#PWR011" H 7000 1900 50  0001 C CNN
F 1 "GND" H 7005 1977 50  0000 C CNN
F 2 "" H 7000 2150 50  0001 C CNN
F 3 "" H 7000 2150 50  0001 C CNN
	1    7000 2150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR010
U 1 1 5FF0F0CD
P 7000 1250
F 0 "#PWR010" H 7000 1100 50  0001 C CNN
F 1 "+5V" H 7015 1423 50  0000 C CNN
F 2 "" H 7000 1250 50  0001 C CNN
F 3 "" H 7000 1250 50  0001 C CNN
	1    7000 1250
	1    0    0    -1  
$EndComp
Text GLabel 2300 7050 0    50   Input ~ 0
SPI_MISO
Text GLabel 2300 6950 0    50   Input ~ 0
SPI_MOSI
Text GLabel 2300 6850 0    50   Input ~ 0
SPI_SCK
Text GLabel 2300 6750 0    50   Input ~ 0
SPI_CS_SD
Text GLabel 6250 7100 2    50   Input ~ 0
SPI_MISO
Text GLabel 6250 6900 2    50   Input ~ 0
SPI_MOSI
Text GLabel 6250 6800 2    50   Input ~ 0
SPI_SCK
Text GLabel 6250 7000 2    50   Input ~ 0
SPI_CS_ACC
Text GLabel 6300 3500 2    50   Input ~ 0
SPI_MOSI
Wire Wire Line
	6300 4900 6900 4900
Text GLabel 4700 4700 0    50   Input ~ 0
R1
Wire Wire Line
	4300 4900 4700 4900
Text GLabel 5350 6800 0    50   Input ~ 0
INT1_ACC
Text GLabel 5350 6700 0    50   Input ~ 0
INT2_ACC
Wire Wire Line
	5350 7000 5250 7000
Wire Wire Line
	5250 7000 5250 7150
Wire Wire Line
	5350 6900 5250 6900
Wire Wire Line
	5250 6900 5250 7000
Connection ~ 5250 7000
$Comp
L power:GND #PWR013
U 1 1 5FF3E98B
P 5250 7150
F 0 "#PWR013" H 5250 6900 50  0001 C CNN
F 1 "GND" H 5255 6977 50  0000 C CNN
F 2 "" H 5250 7150 50  0001 C CNN
F 3 "" H 5250 7150 50  0001 C CNN
	1    5250 7150
	1    0    0    -1  
$EndComp
NoConn ~ 5350 6600
Text GLabel 4700 4500 0    50   Input ~ 0
CLK
$Comp
L Connector:Conn_01x15_Female J2
U 1 1 5FF4B8BC
P 3650 4200
F 0 "J2" H 3542 3275 50  0000 C CNN
F 1 "Conn_01x15_Female" H 3542 3366 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 3650 4200 50  0001 C CNN
F 3 "~" H 3650 4200 50  0001 C CNN
	1    3650 4200
	-1   0    0    1   
$EndComp
Text GLabel 3850 4500 2    50   Input ~ 0
CLK
Text GLabel 3850 4700 2    50   Input ~ 0
R1
Wire Wire Line
	3850 4800 3950 4800
Wire Wire Line
	3950 4800 3950 5000
$Comp
L power:GND #PWR02
U 1 1 5FF708EE
P 3950 5000
F 0 "#PWR02" H 3950 4750 50  0001 C CNN
F 1 "GND" H 3955 4827 50  0000 C CNN
F 2 "" H 3950 5000 50  0001 C CNN
F 3 "" H 3950 5000 50  0001 C CNN
	1    3950 5000
	1    0    0    -1  
$EndComp
Connection ~ 6900 4900
Wire Wire Line
	7500 4800 7600 4800
Wire Wire Line
	7500 5000 7500 4800
$Comp
L power:GND #PWR012
U 1 1 5FF95492
P 7500 5000
F 0 "#PWR012" H 7500 4750 50  0001 C CNN
F 1 "GND" H 7505 4827 50  0000 C CNN
F 2 "" H 7500 5000 50  0001 C CNN
F 3 "" H 7500 5000 50  0001 C CNN
	1    7500 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4900 6900 4900
Text GLabel 7600 3500 0    50   Input ~ 0
SPI_MOSI
$Comp
L Connector:Conn_01x15_Female J3
U 1 1 5FF70E63
P 7800 4200
F 0 "J3" H 7828 4226 50  0000 L CNN
F 1 "Conn_01x15_Female" H 7828 4135 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x15_P2.54mm_Vertical" H 7800 4200 50  0001 C CNN
F 3 "~" H 7800 4200 50  0001 C CNN
	1    7800 4200
	1    0    0    -1  
$EndComp
Text GLabel 7600 3900 0    50   Input ~ 0
SPI_CS_ACC
Text GLabel 7600 4700 0    50   Input ~ 0
OE
Text GLabel 7600 4600 0    50   Input ~ 0
LAT
Text GLabel 7600 4500 0    50   Input ~ 0
C
Text GLabel 7600 4400 0    50   Input ~ 0
B
Text GLabel 7600 4300 0    50   Input ~ 0
A
Text GLabel 7600 4200 0    50   Input ~ 0
SPI_CS_SD
Text GLabel 7600 4100 0    50   Input ~ 0
SPI_SCK
Text GLabel 7600 4000 0    50   Input ~ 0
SPI_MISO
$Comp
L Connector:Conn_01x08_Female J8
U 1 1 5FFC0F01
P 8900 3850
F 0 "J8" H 8792 3225 50  0000 C CNN
F 1 "Conn_01x08_Female" H 8792 3316 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 8900 3850 50  0001 C CNN
F 3 "~" H 8900 3850 50  0001 C CNN
	1    8900 3850
	-1   0    0    -1  
$EndComp
Text GLabel 9100 3550 2    50   Input ~ 0
R1_Out
Text GLabel 9100 3650 2    50   Input ~ 0
B1_Out
Text GLabel 9100 3750 2    50   Input ~ 0
R2_Out
$Comp
L Connector:Conn_01x08_Female J9
U 1 1 5FFDAB1E
P 11350 3850
F 0 "J9" H 11378 3826 50  0000 L CNN
F 1 "Conn_01x08_Female" H 11378 3735 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 11350 3850 50  0001 C CNN
F 3 "~" H 11350 3850 50  0001 C CNN
	1    11350 3850
	1    0    0    -1  
$EndComp
Text GLabel 11150 3550 0    50   Input ~ 0
G1_Out
Text GLabel 11150 3750 0    50   Input ~ 0
G2_Out
Wire Wire Line
	11150 3650 10800 3650
Wire Wire Line
	10800 3850 11150 3850
Wire Wire Line
	11150 4050 10800 4050
Wire Wire Line
	11150 4250 10800 4250
$Comp
L Connector:Conn_01x08_Female J6
U 1 1 5FFED18D
P 600 4000
F 0 "J6" H 492 3375 50  0000 C CNN
F 1 "Conn_01x08_Female" H 492 3466 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 600 4000 50  0001 C CNN
F 3 "~" H 600 4000 50  0001 C CNN
	1    600  4000
	-1   0    0    -1  
$EndComp
Text GLabel 800  3700 2    50   Input ~ 0
R1
Text GLabel 800  3800 2    50   Input ~ 0
B1
Text GLabel 800  4000 2    50   Input ~ 0
B2
Text GLabel 800  3900 2    50   Input ~ 0
R2
Text GLabel 800  4100 2    50   Input ~ 0
A
Text GLabel 800  4200 2    50   Input ~ 0
C
Text GLabel 800  4300 2    50   Input ~ 0
CLK
Text GLabel 800  4400 2    50   Input ~ 0
OE
$Comp
L Connector:Conn_01x08_Female J7
U 1 1 6000D895
P 2500 4000
F 0 "J7" H 2528 3976 50  0000 L CNN
F 1 "Conn_01x08_Female" H 2528 3885 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x08_P2.54mm_Vertical" H 2500 4000 50  0001 C CNN
F 3 "~" H 2500 4000 50  0001 C CNN
	1    2500 4000
	1    0    0    -1  
$EndComp
Text GLabel 2300 3700 0    50   Input ~ 0
G1
Text GLabel 2300 3900 0    50   Input ~ 0
G2
Text GLabel 2300 4100 0    50   Input ~ 0
B
Text GLabel 2300 4300 0    50   Input ~ 0
LAT
Wire Wire Line
	2300 3800 2050 3800
Wire Wire Line
	2300 4200 2050 4200
Wire Wire Line
	2300 4000 2050 4000
Connection ~ 2050 3800
Wire Wire Line
	2300 4400 2050 4400
$Comp
L Device:LED D5
U 1 1 60037267
P 2950 1950
F 0 "D5" V 2989 1833 50  0000 R CNN
F 1 "LEDG" V 2898 1833 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 2950 1950 50  0001 C CNN
F 3 "~" H 2950 1950 50  0001 C CNN
	1    2950 1950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 6003726D
P 2950 1550
F 0 "R5" H 3020 1596 50  0000 L CNN
F 1 "1k" H 3020 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2880 1550 50  0001 C CNN
F 3 "~" H 2950 1550 50  0001 C CNN
	1    2950 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 1700 2950 1800
Wire Wire Line
	2950 1300 2950 1400
Wire Wire Line
	2950 2100 2950 2200
$Comp
L power:GND #PWR019
U 1 1 6003727C
P 2950 2200
F 0 "#PWR019" H 2950 1950 50  0001 C CNN
F 1 "GND" H 2955 2027 50  0000 C CNN
F 2 "" H 2950 2200 50  0001 C CNN
F 3 "" H 2950 2200 50  0001 C CNN
	1    2950 2200
	1    0    0    -1  
$EndComp
Text GLabel 6300 3900 2    50   Input ~ 0
SPI_CS_ACC
Text GLabel 6300 4700 2    50   Input ~ 0
OE
Text GLabel 6300 4600 2    50   Input ~ 0
LAT
Text GLabel 6300 4500 2    50   Input ~ 0
C
Text GLabel 6300 4400 2    50   Input ~ 0
B
Text GLabel 6300 4300 2    50   Input ~ 0
A
Text GLabel 6300 4200 2    50   Input ~ 0
SPI_CS_SD
Text GLabel 6300 4100 2    50   Input ~ 0
SPI_SCK
Text GLabel 6300 4000 2    50   Input ~ 0
SPI_MISO
Text GLabel 2950 1300 0    50   Input ~ 0
LEDG1
Text GLabel 4700 4300 0    50   Input ~ 0
INT1_ACC
Text GLabel 4700 4200 0    50   Input ~ 0
INT2_ACC
Text GLabel 3850 4200 2    50   Input ~ 0
INT2_ACC
Text GLabel 3850 4300 2    50   Input ~ 0
INT1_ACC
Wire Wire Line
	3850 4900 4300 4900
Connection ~ 4300 4900
Wire Wire Line
	3850 3500 4700 3500
Connection ~ 10800 3650
Wire Wire Line
	10400 4150 11150 4150
Wire Wire Line
	10400 3950 11150 3950
Wire Wire Line
	9100 4250 9900 4250
Wire Wire Line
	9100 4150 9900 4150
Wire Wire Line
	9900 4050 9100 4050
Wire Wire Line
	9100 3950 9900 3950
Wire Wire Line
	9900 3850 9100 3850
Wire Wire Line
	10400 3850 10800 3850
Wire Wire Line
	10400 4050 10800 4050
Wire Wire Line
	10400 4250 10800 4250
Wire Wire Line
	10400 3650 10800 3650
Text GLabel 10400 3750 2    50   Input ~ 0
G2_Out
Text GLabel 10400 3550 2    50   Input ~ 0
G1_Out
Text GLabel 9900 3750 0    50   Input ~ 0
R2_Out
Text GLabel 9900 3650 0    50   Input ~ 0
B1_Out
Text GLabel 9900 3550 0    50   Input ~ 0
R1_Out
$Comp
L Connector_Generic:Conn_02x08_Odd_Even J5
U 1 1 5FEB969D
P 10100 3850
F 0 "J5" H 10150 4367 50  0000 C CNN
F 1 "Conn_02x08_Odd_Even" H 10150 4276 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x08_P2.54mm_Vertical" H 10100 3850 50  0001 C CNN
F 3 "~" H 10100 3850 50  0001 C CNN
	1    10100 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 60199A29
P 2000 2200
F 0 "#PWR020" H 2000 1950 50  0001 C CNN
F 1 "GND" H 2005 2027 50  0000 C CNN
F 2 "" H 2000 2200 50  0001 C CNN
F 3 "" H 2000 2200 50  0001 C CNN
	1    2000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 2100 2000 2200
Wire Wire Line
	2000 1700 2000 1800
$Comp
L Device:R R3
U 1 1 60199A32
P 2000 1550
F 0 "R3" H 2070 1596 50  0000 L CNN
F 1 "1k" H 2070 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 1930 1550 50  0001 C CNN
F 3 "~" H 2000 1550 50  0001 C CNN
	1    2000 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 60199A38
P 2000 1950
F 0 "D3" V 2039 1833 50  0000 R CNN
F 1 "LEDR" V 1948 1833 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 2000 1950 50  0001 C CNN
F 3 "~" H 2000 1950 50  0001 C CNN
	1    2000 1950
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR023
U 1 1 601A08D5
P 2450 2200
F 0 "#PWR023" H 2450 1950 50  0001 C CNN
F 1 "GND" H 2455 2027 50  0000 C CNN
F 2 "" H 2450 2200 50  0001 C CNN
F 3 "" H 2450 2200 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2100 2450 2200
Wire Wire Line
	2450 1700 2450 1800
$Comp
L Device:R R4
U 1 1 601A08DE
P 2450 1550
F 0 "R4" H 2520 1596 50  0000 L CNN
F 1 "1k" H 2520 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 2380 1550 50  0001 C CNN
F 3 "~" H 2450 1550 50  0001 C CNN
	1    2450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D4
U 1 1 601A08E4
P 2450 1950
F 0 "D4" V 2489 1833 50  0000 R CNN
F 1 "LEDY" V 2398 1833 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 2450 1950 50  0001 C CNN
F 3 "~" H 2450 1950 50  0001 C CNN
	1    2450 1950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7850 1100 7850 1600
$Comp
L Device:LED D10
U 1 1 5FF5AC0B
P 7650 1750
F 0 "D10" V 7689 1633 50  0000 R CNN
F 1 "LEDR" V 7598 1633 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric" H 7650 1750 50  0001 C CNN
F 3 "~" H 7650 1750 50  0001 C CNN
	1    7650 1750
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R10
U 1 1 5FF5AC11
P 7650 1350
F 0 "R10" H 7720 1396 50  0000 L CNN
F 1 "3k3" H 7720 1305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 7580 1350 50  0001 C CNN
F 3 "~" H 7650 1350 50  0001 C CNN
	1    7650 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 1500 7650 1600
Wire Wire Line
	7650 1900 7650 2000
$Comp
L power:GND #PWR034
U 1 1 5FF5AC1A
P 7650 2000
F 0 "#PWR034" H 7650 1750 50  0001 C CNN
F 1 "GND" H 7655 1827 50  0000 C CNN
F 2 "" H 7650 2000 50  0001 C CNN
F 3 "" H 7650 2000 50  0001 C CNN
	1    7650 2000
	1    0    0    -1  
$EndComp
Text GLabel 6300 3600 2    50   Input ~ 0
Button
Text GLabel 7600 3600 0    50   Input ~ 0
Button
Text GLabel 9200 5850 2    50   Input ~ 0
Button
$Comp
L Device:Buzzer BZ1
U 1 1 5FF19690
P 4100 5850
F 0 "BZ1" H 4252 5879 50  0000 L CNN
F 1 "Buzzer" H 4252 5788 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 4075 5950 50  0001 C CNN
F 3 "~" V 4075 5950 50  0001 C CNN
	1    4100 5850
	-1   0    0    -1  
$EndComp
$Comp
L LolomoloKiCADSymLib:MAX9814_Breakout U4
U 1 1 5FF1A8EB
P 1350 5250
F 0 "U4" H 1408 5715 50  0000 C CNN
F 1 "MAX9814_Breakout" H 1408 5624 50  0000 C CNN
F 2 "LolomoloKiCADLib:MAX9814_Breakout" H 1750 5650 50  0001 C CNN
F 3 "" H 1750 5650 50  0001 C CNN
	1    1350 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5050 2050 5050
Wire Wire Line
	2050 5050 2050 5550
$Comp
L power:GND #PWR021
U 1 1 5FF48D47
P 2050 5550
F 0 "#PWR021" H 2050 5300 50  0001 C CNN
F 1 "GND" H 2055 5377 50  0000 C CNN
F 2 "" H 2050 5550 50  0001 C CNN
F 3 "" H 2050 5550 50  0001 C CNN
	1    2050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5150 2150 5050
$Comp
L power:+3V3 #PWR022
U 1 1 5FF4FCD0
P 2150 5050
F 0 "#PWR022" H 2150 4900 50  0001 C CNN
F 1 "+3V3" H 2165 5223 50  0000 C CNN
F 2 "" H 2150 5050 50  0001 C CNN
F 3 "" H 2150 5050 50  0001 C CNN
	1    2150 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 5150 2150 5150
$Comp
L power:GND #PWR025
U 1 1 5FF5EB83
P 2500 5600
F 0 "#PWR025" H 2500 5350 50  0001 C CNN
F 1 "GND" H 2505 5427 50  0000 C CNN
F 2 "" H 2500 5600 50  0001 C CNN
F 3 "" H 2500 5600 50  0001 C CNN
	1    2500 5600
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR024
U 1 1 5FF5E774
P 2500 4900
F 0 "#PWR024" H 2500 4750 50  0001 C CNN
F 1 "+3V3" H 2515 5073 50  0000 C CNN
F 2 "" H 2500 4900 50  0001 C CNN
F 3 "" H 2500 4900 50  0001 C CNN
	1    2500 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper_NC_Dual JP1
U 1 1 5FF6B386
P 2500 5250
F 0 "JP1" V 2454 5352 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 2545 5352 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2500 5250 50  0001 C CNN
F 3 "~" H 2500 5250 50  0001 C CNN
	1    2500 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 5250 1950 5250
Wire Wire Line
	2500 4900 2500 5000
Wire Wire Line
	2500 5500 2500 5600
Wire Wire Line
	2800 5700 2800 5800
Wire Wire Line
	2800 5100 2800 5200
$Comp
L Device:Jumper_NC_Dual JP2
U 1 1 5FF88DA5
P 2800 5450
F 0 "JP2" V 2754 5552 50  0000 L CNN
F 1 "Jumper_NC_Dual" V 2845 5552 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 2800 5450 50  0001 C CNN
F 3 "~" H 2800 5450 50  0001 C CNN
	1    2800 5450
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR026
U 1 1 5FF88D9F
P 2800 5100
F 0 "#PWR026" H 2800 4950 50  0001 C CNN
F 1 "+3V3" H 2815 5273 50  0000 C CNN
F 2 "" H 2800 5100 50  0001 C CNN
F 3 "" H 2800 5100 50  0001 C CNN
	1    2800 5100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR027
U 1 1 5FF88D99
P 2800 5800
F 0 "#PWR027" H 2800 5550 50  0001 C CNN
F 1 "GND" H 2805 5627 50  0000 C CNN
F 2 "" H 2800 5800 50  0001 C CNN
F 3 "" H 2800 5800 50  0001 C CNN
	1    2800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5450 1950 5450
Wire Wire Line
	1950 5350 2100 5350
Text GLabel 2100 5350 2    50   Input ~ 0
Audio
Text GLabel 3850 3900 2    50   Input ~ 0
Audio
Text GLabel 4700 3900 0    50   Input ~ 0
Audio
$Comp
L power:+5V #PWR029
U 1 1 5FFC7727
P 4300 5650
F 0 "#PWR029" H 4300 5500 50  0001 C CNN
F 1 "+5V" H 4315 5823 50  0000 C CNN
F 2 "" H 4300 5650 50  0001 C CNN
F 3 "" H 4300 5650 50  0001 C CNN
	1    4300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 5650 4300 5750
Wire Wire Line
	4300 5750 4200 5750
Wire Wire Line
	4200 5950 4300 5950
Wire Wire Line
	4300 5950 4300 6050
$Comp
L power:GND #PWR030
U 1 1 5FFDF18E
P 4300 6550
F 0 "#PWR030" H 4300 6300 50  0001 C CNN
F 1 "GND" H 4305 6377 50  0000 C CNN
F 2 "" H 4300 6550 50  0001 C CNN
F 3 "" H 4300 6550 50  0001 C CNN
	1    4300 6550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6550 4300 6450
Text GLabel 3600 6250 0    50   Input ~ 0
Buzzer
Text GLabel 4700 4000 0    50   Input ~ 0
Buzzer
Text GLabel 3850 4000 2    50   Input ~ 0
Buzzer
$Comp
L Device:Q_NMOS_GSD Q1
U 1 1 5FFF1FC3
P 4200 6250
F 0 "Q1" H 4406 6296 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 4406 6205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23_Handsoldering" H 4400 6350 50  0001 C CNN
F 3 "~" H 4200 6250 50  0001 C CNN
	1    4200 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5FFF726F
P 3800 6250
F 0 "R11" H 3870 6296 50  0000 L CNN
F 1 "1k" H 3870 6205 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3730 6250 50  0001 C CNN
F 3 "~" H 3800 6250 50  0001 C CNN
	1    3800 6250
	0    1    1    0   
$EndComp
Wire Wire Line
	4000 6250 3950 6250
Wire Wire Line
	3650 6250 3600 6250
$Comp
L Device:R R13
U 1 1 600135C8
P 8850 5850
F 0 "R13" H 8920 5896 50  0000 L CNN
F 1 "10k" H 8920 5805 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8780 5850 50  0001 C CNN
F 3 "~" H 8850 5850 50  0001 C CNN
	1    8850 5850
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 60016399
P 9100 5600
F 0 "C1" H 9215 5646 50  0000 L CNN
F 1 "0.1uF" H 9215 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 9138 5450 50  0001 C CNN
F 3 "~" H 9100 5600 50  0001 C CNN
	1    9100 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 60021CF3
P 8600 6100
F 0 "R12" H 8670 6146 50  0000 L CNN
F 1 "100k" H 8670 6055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 8530 6100 50  0001 C CNN
F 3 "~" H 8600 6100 50  0001 C CNN
	1    8600 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 5850 8600 5850
Wire Wire Line
	8600 5850 8600 5950
Connection ~ 8600 5850
Wire Wire Line
	9000 5850 9100 5850
Wire Wire Line
	9100 5850 9100 5750
Wire Wire Line
	9100 5450 9100 5250
Wire Wire Line
	9100 5250 8850 5250
Wire Wire Line
	8850 5250 8850 5150
Connection ~ 8850 5250
Wire Wire Line
	8850 5250 8600 5250
$Comp
L power:+3V3 #PWR036
U 1 1 600446D2
P 8850 5150
F 0 "#PWR036" H 8850 5000 50  0001 C CNN
F 1 "+3V3" H 8865 5323 50  0000 C CNN
F 2 "" H 8850 5150 50  0001 C CNN
F 3 "" H 8850 5150 50  0001 C CNN
	1    8850 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5850 9100 5850
Connection ~ 9100 5850
$Comp
L power:GND #PWR035
U 1 1 60072C0E
P 8600 6350
F 0 "#PWR035" H 8600 6100 50  0001 C CNN
F 1 "GND" H 8605 6177 50  0000 C CNN
F 2 "" H 8600 6350 50  0001 C CNN
F 3 "" H 8600 6350 50  0001 C CNN
	1    8600 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 6350 8600 6250
$Comp
L 500SSP1S2M2QEA:500SSP1S2M2QEA J10
U 1 1 60084CC3
P 7850 900
F 0 "J10" H 8478 846 50  0000 L CNN
F 1 "500SSP1S2M2QEA" H 8478 755 50  0000 L CNN
F 2 "LolomoloKiCADLib:500SSP1S2M2QEA" H 8500 1000 50  0001 L CNN
F 3 "https://componentsearchengine.com/Datasheets/1/500SSP1S2M2QEA.pdf" H 8500 900 50  0001 L CNN
F 4 "E-SWITCH - 500SSP1S2M2QEA - SLIDE SWITCH, SPDT, 5A, 120VAC, TH" H 8500 800 50  0001 L CNN "Description"
F 5 "6.6" H 8500 700 50  0001 L CNN "Height"
F 6 "E-Switch" H 8500 600 50  0001 L CNN "Manufacturer_Name"
F 7 "500SSP1S2M2QEA" H 8500 500 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "612-500SSP1S2M2QEA" H 8500 400 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/E-Switch/500SSP1S2M2QEA?qs=f57gQzlyLipU%252BL4xPBemOw%3D%3D" H 8500 300 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 8500 200 50  0001 L CNN "Arrow Part Number"
F 11 "" H 8500 100 50  0001 L CNN "Arrow Price/Stock"
	1    7850 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1000 7750 1000
Wire Wire Line
	7750 700  7750 1000
Wire Wire Line
	7850 900  7650 900 
Wire Wire Line
	7650 900  7650 1200
$Comp
L MJTP1243:MJTP1243 S1
U 1 1 600A242F
P 8600 5600
F 0 "S1" H 8942 5235 50  0000 C CNN
F 1 "MJTP1243" H 8942 5326 50  0000 C CNN
F 2 "MJTP1243:MJTP1243" H 9350 5700 50  0001 L CNN
F 3 "https://www.mouser.com/datasheet/2/26/MJTP_6MM-25494.pdf" H 9350 5600 50  0001 L CNN
F 4 "APEM - MJTP1243 - TACTILE SW, SPST, 0.05A, 12VDC, SOLDER" H 9350 5500 50  0001 L CNN "Description"
F 5 "4.3" H 9350 5400 50  0001 L CNN "Height"
F 6 "Apem" H 9350 5300 50  0001 L CNN "Manufacturer_Name"
F 7 "MJTP1243" H 9350 5200 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "642-MJTP1243" H 9350 5100 50  0001 L CNN "Mouser Part Number"
F 9 "https://www.mouser.co.uk/ProductDetail/Apem/MJTP1243?qs=Uv2m1HzDAyqvmQR%252Bfj6VKQ%3D%3D" H 9350 5000 50  0001 L CNN "Mouser Price/Stock"
F 10 "" H 9350 4900 50  0001 L CNN "Arrow Part Number"
F 11 "" H 9350 4800 50  0001 L CNN "Arrow Price/Stock"
	1    8600 5600
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 5600 8600 5850
Wire Wire Line
	8600 5250 8600 5500
Wire Wire Line
	7850 1600 8000 1600
Wire Wire Line
	8000 1700 8000 1600
Connection ~ 8000 1600
Wire Wire Line
	8000 1600 8100 1600
Wire Wire Line
	8100 1700 8100 1600
Wire Wire Line
	8400 1700 8400 1600
Wire Wire Line
	8400 1600 8300 1600
Connection ~ 8300 1600
Wire Wire Line
	8200 1600 8300 1600
Wire Wire Line
	2450 1300 2450 1400
Text GLabel 2450 1300 0    50   Input ~ 0
LEDY1
Wire Wire Line
	2000 1300 2000 1400
Text GLabel 2000 1300 0    50   Input ~ 0
LEDR1
Text GLabel 4700 4400 0    50   Input ~ 0
LEDG1
Text GLabel 4700 4600 0    50   Input ~ 0
LEDY1
Text GLabel 4700 4100 0    50   Input ~ 0
LEDR1
Text GLabel 3850 4100 2    50   Input ~ 0
LEDR1
Text GLabel 3850 4600 2    50   Input ~ 0
LEDY1
Text Notes 3750 3100 0    50   ~ 0
Fix USB Strain releif and button sitting on top of eachother
Text Notes 4650 3200 0    50   ~ 0
https://randomnerdtutorials.com/esp32-pinout-reference-gpios/
Wire Wire Line
	3850 3600 4700 3600
Wire Wire Line
	4700 3700 3850 3700
Wire Wire Line
	4700 3800 3850 3800
Wire Wire Line
	6300 3700 7600 3700
Wire Wire Line
	6300 3800 7600 3800
Text GLabel 3850 4400 2    50   Input ~ 0
LEDG1
$EndSCHEMATC
