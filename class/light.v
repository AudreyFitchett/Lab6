module light(
    // Declare downstairs and upstairs input
    // Declare stair light output
    
    input  upstairs, downstairs ,
    output lightOutput
//    input [1:0] sw, [0:0] sw,
//    output [0:0] led
);

    // Enter logic equation here
    assign lightOutput = (downstairs ^ upstairs);
   
endmodule