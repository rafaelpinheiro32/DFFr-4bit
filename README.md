# DFFr-4bit
4 bit D-type flip flop with reset in Verilog

Module file defines the behavior of the DFFr.
If reset signal is high, q is low and qbar is high, else q is d and qbar is ~d

Testbench file tests its functionality.
Image of waveform:
![image](https://github.com/rafaelpinheiro32/DFFr-4bit/assets/151592512/0a352073-6462-45b9-adbf-107e94dfc7b6)

(t=15) At positive clock edge, if d is high and reset is low, q is set to high.
(t=25) At positive clock edge, if d is low and reset is low, q is set to low.
(t=35) At positive clock edge, q is low due to reset being high, even though d is high.
(t=45 and t=55) Reset is low again, so behavior follows as t=15 and 25, respectively.
