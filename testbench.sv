// Code your testbench here
// or browse Examples
// Code your testbench here
// or browse Examples
`timescale 1ns / 1ps
module gate_test;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire sum;
	wire cout;

	// Instantiate the Unit Under Test (UUT)
	hf_gate uut (
		.sum(sum), 
		.cout(cout), 
		.a(a), 
		.b(b)
	);

                
	initial 
begin
		// Initialize Inputs
		a = 0;
		b = 0;
		#100;
       // wait for 100 global seconds for reset
		// Add stimulus here
      a=0;
      b=1;
     #100;
	  // wait for 100 global seconds for reset 
      a=1;
      b=0;
		//wait for 100 global seconds for reset
     #100 ;
      a=1;
      b=1; 
		//wait for 100 global seconds for reset
     #100;
	end
	initial 
	$monitor($time,"output sum =%d", sum);
      
  
  initial 
    begin 
      $dumpfile("half_gate.vcd");
      $dumpvarcs("0,gate_test");
                end
endmodule
