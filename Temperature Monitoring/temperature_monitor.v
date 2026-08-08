module temperature_monitor(

input reset,
input [7:0] temperature,

output reg low,
output reg normal,
output reg high,
output reg alarm

);

always @(*)
begin

if(reset)
begin
    low = 0;
    normal = 0;
    high = 0;
    alarm = 0;
end

else
begin

    low = 0;
    normal = 0;
    high = 0;
    alarm = 0;

    if(temperature < 25)
        low = 1;

    else if(temperature < 40)
        normal = 1;

    else
    begin
        high = 1;
        alarm = 1;
    end

end

end

endmodule