# eight_bit_to-binary
 Verilog progrm that allows user to use inputs from the basys3 development board and display the corresponding BCD value on the seven-segment display array

-The conversion from eight bit to BCD is carried out using shift add three algorithm. The algorithm is contained within the Shift_Add3_algorithm.v file.

-The conversion itself is carried out in the Binary_BCD_Converter.v file making use of the shift add 3 algorithm using inputs from the switches. 

-A slow clock is generated and used along with the counter to synchronize the display of the digits across three different seven-segment displays.

-The four one multiplexer and the decoder are used to select and display the correct digit on the c orrect display.

-The LED pattern required for display of the numbers is encoded in the BCS_Seven_Segment.v file.

-The entire I/O and initialisation of different modules is handled by the Top Module. It gathers the inputs from the switches and passes out the outputs to the display and LED select.

-The constraints file is used to properly assign the different ports to their respective hardware components. 
