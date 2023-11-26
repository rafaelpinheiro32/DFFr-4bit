# DFFr-4bit
4 bit D-type flip flop with reset in Verilog

Module file defines the behavior of the DFFr.
If reset signal is high, q is low and qbar is high, else q is d and qbar is ~d

Testbench file tests its functionality.
Image of waveform:
![image](https://github.com/rafaelpinheiro32/DFFr-4bit/assets/151592512/d03dddd3-fff2-4e33-963b-a045a595bb20)

(t=15) At positive clock edge, if d is high and reset is low, q is set to high.

(t=25) At positive clock edge, if d is low and reset is low, q is set to low.

(t=35) At positive clock edge, q is low due to reset being high, even though d is high.

(t=45 and t=55) Reset is low again, so behavior follows as t=15 and 25, respectively.
