module testccc;
reg a;

initial
begin
a=2'd9;
$monitor("%b", &a);
end
endmodule
