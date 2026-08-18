`timescale 1ns/10 ps  // time-unit = 1 ns, precision = 10 ps

module ALU_tb;
  
  logic [7:0] A, B;
  logic [2:0] opcode;
  logic [7:0] result;
  
  // Delay between test cases = 20 ns
    localparam period = 20;
  
  
  ALU myALU ( .A(A), .B(B), .opcode(opcode), .result(result));
  
  initial 
    begin
      
      A = 8'b00000101; // A = 5
      B = 8'b00000100; // B = 4
      
      opcode = 3'b000; // NOT A
      #period;
      $display("NOT: %b", result);
      
      opcode = 3'b001; // AND 
      #period;
      $display("AND: %b", result);
      
      opcode = 3'b010; // ADD 
      #period;
      $display("ADD: %b", result);
      
      opcode = 3'b011; // SUBTRACT 
      #period;
      $display("SUBTRACT: %b", result);
      
      opcode = 3'b100; // OR 
      #period;
      $display("OR: %b", result);
      
      opcode = 3'b101; // XOR
      #period;
      $display("XOR: %b", result);
      
      opcode = 3'b110; // SHIFT LEFT 
      #period;
      $display("SHIFT LEFT: %b", result);
      
      opcode = 3'b111; // SHIFT RIGHT 
      #period;
      $display("SHIFT RIGHT: %b", result);
      
      $finish;
    end
  
endmodule
