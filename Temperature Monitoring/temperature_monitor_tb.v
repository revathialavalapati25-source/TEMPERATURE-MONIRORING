`timescale 1ns/1ps

module temperature_monitor_tb;

reg reset;
reg [7:0] temperature;

wire low;
wire normal;
wire high;
wire alarm;

temperature_monitor DUT(

.reset(reset),
.temperature(temperature),
.low(low),
.normal(normal),
.high(high),
.alarm(alarm)

);

initial
begin

$display("Time\tTemp\tLow Normal High Alarm");

reset = 1;
temperature = 0;

#10;

reset = 0;

// Low Temperature
temperature = 20;
#10;

// Normal Temperature
temperature = 30;
#10;

// High Temperature
temperature = 45;
#10;

// Very High Temperature
temperature = 60;
#10;

$display("%0t\t%d\t%b    %b      %b    %b",$time,temperature,low,normal,high,alarm);

$finish;

end

endmodule