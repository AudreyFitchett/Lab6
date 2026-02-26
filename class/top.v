// Implement top level module

module top(
    input [7:0] sw,
    output [5:0] led 
);

wire w;

light connectSwLED(
    .upstairs(sw[1]),
    .downstairs(sw[0]),
    .lightOutput(led[0])
    );

adder inst(
    .A(sw[2]),
    .B(sw[3]),
    .Y(led[1]),
    .Cout(led[2])
);

full_adder inst_LSB(
    .A(sw[4]),
    .B(sw[6]),
    .Cout(w),
    .Cin(1'b0),
    .Y(led[3])
);

full_adder inst_MSB(
    .A(sw[5]),
    .B(sw[7]),
    .Cin(w),
    .Cout(led[5]),
    .Y(led[4])
);


endmodule