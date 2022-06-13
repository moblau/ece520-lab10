# Lab 10 - Intro to HLS 

## Summary
Vitis HLS can be used to create RTL designs with C code. In this lab, I used source code that was given to me to package an IP that can be used in the Vivado block design. This workflow is helpful in speeding up the design process of complicated RTL designs because C code can be faster to write than RTL code. When the source code was imported to Vitis HLS, a compiler flag HW_COSIM had to be set in order for the function to be called in the testbench. The simulation was run in Vitis HLS and the output showed that the matrix multiplier worked and the tests passed.

The synthesis summary section the timing estimates, the performance and resource estimates, and the hw interfaces between the C code and the generated RTL code. The schedule viewer showed how operations and control steps are related to eachother and also where each operation appears in the C code. The schedule viewer also shows the delay time in clock cycles for each operation. Here it can be seen that the multiplication operation in the C code takes the longest, 2 clock cycles. The function call view graph shows where each part of the code is called. It also shows the resources used in each part of the code. The cosimulation graph opens a simulation in Vivado that shows the status of each signal while the code is running. 

A block design was created in Vivado with the exported IP, shown in Figure 10.1.

![block design](/img/bd.png)

- Estimated clock period: 6.270ns
- Worst case latency: 8.97ns
- Number of DSP48E used: 2
- Number of FFs used: 117  
- Number of LUTs used: 393


## Results
Demo video shown [here](https://youtu.be/FRWiFEahlMY)  
Note that in the video the audio cuts outs, and so the video is just showing the steps that I have completed in Vitis HLS
