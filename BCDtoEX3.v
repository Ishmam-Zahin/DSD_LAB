module BCDtoEX3(e, b);
input [3:0] b;
output [3:0] e;

not (w0, b[0]);
not (w1, b[1]);
not (w2, b[2]);
not (w3, b[3]);

or (e[0], w0, 0);
and (t1, w0, w1);
and (t2, b[0], b[1]);
or (e[1], t1, t2);
or (t3, b[1], b[0]);
and (t4, t3, w2);
and(t6, t1, b[2]);
or (e[2], t4, t6);
and (t7, b[0], b[2]);
and (t8, b[1], b[2]);
or (e[3], t7, t8, b[3]);

endmodule

module BCDtoEX3_TEST;
reg [3:0] b;
wire [3:0] e;

BCDtoEX3 ex(e, b);

initial
begin
b=4'd0;
#100 b=4'd1;
#100 b=4'd2;
#100 b=4'd3;
#100 b=4'd4;
#100 b=4'd5;
#100 b=4'd6;
#100 b=4'd7;
#100 b=4'd8;
#100 b=4'd9;
end
endmodule
