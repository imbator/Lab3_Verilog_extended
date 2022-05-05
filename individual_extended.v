module individual_extended(
input [7:0] SW,
output [7:0] HEX2,
output [7:0] HEX3,
output reg [7:0] HEX0,
output reg [7:0] HEX1,
output reg [7:0] LEDG,
output reg [8:0] dec,
output reg [8:0]ones 
);


assign HEX2 = 7'b1111111;
assign HEX3 = 7'b1111111;
// Assigning SW→HEX
always @*
begin
case (SW[7:4])
	0: begin
		HEX1 = 7'b1000000;
		dec = 0;
		end
	1: begin
		HEX1 = 7'b1111001;
		dec = 10;
		end
	2: begin
		HEX1 = 7'b0100100;
		dec = 20;
		end
	3: begin
		HEX1 = 7'b0110000;
		dec = 30;
		end
	4: begin
		dec = 40;
		HEX1 = 7'b0011001;
		end
	5: begin
		HEX1 = 7'b0010010;
		dec = 50;
		end
	6: begin
		HEX1 = 7'b0000010;
		dec = 60;
		end
	7: begin
		dec = 70;
		HEX1 = 7'b1111000;
		end
	8: begin
		dec = 80;
		HEX1 = 7'b0000000;
		end
	9: begin
		HEX1 = 7'b0010000;
		dec = 90;
		end
	default: 
		begin
		HEX1 = 7'b0000110;
		dec = 0;
		end
endcase
case (SW[3:0])
	0: begin
		HEX0 = 7'b1000000;
		ones = 0;
		end
	1: begin
		HEX0 = 7'b1111001;
		ones = 1;
		end
	2: begin
		HEX0 = 7'b0100100;
		ones = 2;
		end
	3: begin
		HEX0 = 7'b0110000;
		ones = 3;
		end
	4: begin
		HEX0 = 7'b0011001;
		ones = 4;
		end
	5: begin
		HEX0 = 7'b0010010;
		ones = 5;
		end
	6: begin
		HEX0 = 7'b0000010;
		ones = 6;
		end
	7: begin
		HEX0 = 7'b1111000;
		ones = 7;
		end
	8: begin
		HEX0 = 7'b0000000;
		ones = 8;
		end
	9: begin
		HEX0 = 7'b0010000;
		ones = 9;
		end
	default: 
		begin
		HEX0 = 7'b0000110;
		ones = 0;
		end
endcase
LEDG[7:0] = dec + ones;

end

endmodule
