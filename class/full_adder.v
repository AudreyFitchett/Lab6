// Implement module called full_adder
module full_adder(
    
    input A, B, Cin,
    output Cout, Y
//    input [4:0] sw, [5:0] sw, [6:0] sw, [7:0] sw,
//    output [3:0] led,[4:0] led,[5:0] led
    
);
     //assign Cout = (~A&B&Cin + A&~B&Cin + A&B&~Cin + A&B&Cin);
     assign Cout = ((B&Cin) | (A&B) | (A&Cin));
     assign Y = (A ^ B ^ Cin);
endmodule 