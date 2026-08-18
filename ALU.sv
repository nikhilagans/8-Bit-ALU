// ALU_project

`timescale 1ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module ALU (A, B, opcode, result);
  
  input logic [7:0] A, B;
  input logic [2:0] opcode;
  output logic [7:0] result; //need it to be reg because it is changed in the always block
  
  // 000 - NOT A 
  // 001 - AND 
  // 010 - ADD 
  // 011 - SUBTRACT 
  // 100 - OR 
  // 101 - XOR 
  // 110 - SHIFT LEFT 
  // 111 - SHIFT RIGHT 
  
  always_comb //always block is triggered when input changes
    begin 
      
      case(opcode)
        3'b000: result = ~A; // NOT
        3'b001: result = A & B; // AND
        3'b010: result = A + B; // ADD 
        3'b011: result = A - B; // SUBTRACT
        3'b100: result = A | B; // OR
		3'b101: result = A ^ B; // XOR
        3'b110: result = A << 1; // SHIFT LEFT 
        3'b111: result = A >> 1; //SHIFT RIGHT  
        default: result = 8'b00000000;
      endcase 
    end 
endmodule
  
  
