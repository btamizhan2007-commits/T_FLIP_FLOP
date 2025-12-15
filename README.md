# T_FLIP_FLOP

AIM:

To implement T flipflop using verilog and validating their functionality using their functional tables

SOFTWARE REQUIRED:

Quartus prime

THEORY

T Flip-Flop

T flip-flop is the simplified version of JK flip-flop. It is obtained by connecting the same input ‘T’ to both inputs of JK flip-flop. It operates with only positive clock transitions or negative clock transitions. The circuit diagram of T flip-flop is shown in the following figure.

<img width="535" height="350" alt="1" src="https://github.com/user-attachments/assets/b995a259-6c01-4af4-9acb-17f67ddfd5e5" />

This circuit has single input T and two outputs Qtt & Qtt’. The operation of T flip-flop is same as that of JK flip-flop. Here, we considered the inputs of JK flip-flop as J = T and K = T in order to utilize the modified JK flip-flop for 2 combinations of inputs. So, we eliminated the other two combinations of J & K, for which those two values are complement to each other in T flip-flop. The following table shows the state table of T flip-flop.

Here, Qtt & Qt+1t+1 are present state & next state respectively. So, T flip-flop can be used for one of these two functions such as Hold, & Complement of present state based on the input conditions, when positive transition of clock signal is applied. The following table shows the characteristic table of T flip-flop. Inputs Present State Next State

<img width="417" height="312" alt="2" src="https://github.com/user-attachments/assets/4536a074-9f82-49e7-96a8-32c7fe240da1" />

From the above characteristic table, we can directly write the next state equation as Q(t+1)=T′Q(t)+TQ(t)′ ⇒Q(t+1)=T⊕Q(t)

PROGRAM:

```
module T_FLIP_FLOP(
    input  wire clk, rst, T,
    output reg Q 	  
);

  initial begin
     Q<=1'b0;
	 end
  
  
	 always @(posedge clk or posedge rst) begin
	
        if (rst)
            Q <= 1'b0;       // Reset
        else if (T)
            Q <= ~Q;         // Toggle if T=1
        else
            Q <= Q;          // Hold if T=0
    end
endmodule

```
RTL LOGIC FOR T_FLIPFLOP:

[EX 09 Dia.pdf](https://github.com/user-attachments/files/24148025/EX.09.Dia.pdf)

WAVEFORM:

![T_FLIP](https://github.com/user-attachments/assets/bf1417a6-3433-4021-b8a9-f0167da73014)

NAME: TAMIZHAN.B

REF NO: 25018064

RESULTS

Hence, T flipflop using verilog and validating their functionality using their functional tables is implemented succesfully
