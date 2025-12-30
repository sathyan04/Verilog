module sequence_detector_101(
	input clk,
	input rst,
	input data,
	input [1:0] mode,
	output reg detected
);

wire d0,d1,d2,d3;

moore_overlap 		m0 (clk,rst,data,d0);
moore_non_overlap 	m1 (clk,rst,data,d1);
mealy_overlap 		m2 (clk,rst,data,d2);
mealy_non_overlap 	m3 (clk,rst,data,d3);

always @(*) begin
	case(mode)
		2'b00: detected = d0;
		2'b01: detected = d1;
		2'b10: detected = d2;
		2'b11: detected = d3;
		default: detected = 1'b0;
	endcase
end
endmodule

//-------------------------------------------

module moore_overlap (
	input clk,
	input rst,
	input data,
	output detected
);
parameter [1:0] s0=0, s1=1, s2=2, s3=3;
reg [1:0] state, next;

always @(posedge clk) begin
	if(rst)
		state<=s0;
	else
		state<=next;
end

always @(*) begin
	case(state)
		s0: next = data ? s1 : s0;
		s1: next = data ? s1 : s2;
		s2: next = data ? s3 : s0;
		s3: next = data ? s1 : s2;
		default: next = s0;
	endcase
end

assign detected = (state==s3);
endmodule

//----------------------------------------

module moore_non_overlap (
        input clk,
        input rst,
        input data,
        output detected
);
parameter [1:0] s0=0, s1=1, s2=2, s3=3;
reg [1:0] state, next;

always @(posedge clk) begin
        if(rst)
                state<=s0;
        else
                state<=next;
end

always @(*) begin
        case(state)
                s0: next = data ? s1 : s0;
                s1: next = data ? s1 : s2;
                s2: next = data ? s3 : s0;
                s3: next = data ? s0 : s0;
                default: next = s0;
        endcase
end

assign detected = (state==s3);
endmodule

//-----------------------------------------

module mealy_overlap (
        input clk,
        input rst,
        input data,
        output detected
);
parameter [1:0] s0=0, s1=1, s2=2;
reg [1:0] state, next;

always @(posedge clk) begin
        if(rst)
                state<=s0;
        else
                state<=next;
end

always @(*) begin
        case(state)
                s0: next = data ? s1 : s0;
                s1: next = data ? s1 : s2;
                s2: next = data ? s1 : s0;
                default: next = s0;
        endcase
end

assign detected = (state==s2 && data);
endmodule

//-----------------------------------------

module mealy_non_overlap (
        input clk,
        input rst,
        input data,
        output detected
);
parameter [1:0] s0=0, s1=1, s2=2;
reg [1:0] state, next;

always @(posedge clk) begin
        if(rst)
                state<=s0;
        else
                state<=next;
end

always @(*) begin
        case(state)
                s0: next = data ? s1 : s0;
                s1: next = data ? s1 : s2;
                s2: next = data ? s0 : s0;
                default: next = s0;
        endcase
end

assign detected = (state==s2 && data);
endmodule
