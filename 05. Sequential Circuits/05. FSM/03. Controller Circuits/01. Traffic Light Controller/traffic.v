module traffic_light_controller(
    input  wire clk,
    input  wire rst,
    output reg e2_l, e2_r, e2_o,
    output reg w2_l, w2_r, w2_o,
    output reg n2_l, n2_r, n2_o,
    output reg s2_l, s2_r, s2_o
);
    parameter [2:0] S0=0, S1=1,  S2=2,  S3=3,  S4=4,  S5=5,  S6=6,  S7=7;  
    reg [2:0] state, next_state;

    always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end

    always @(*) begin
        case (state)
            S0: next_state = S1;
            S1: next_state = S2;
            S2: next_state = S3;
            S3: next_state = S4;
            S4: next_state = S5;
            S5: next_state = S6;
            S6: next_state = S7;
            S7: next_state = S0;
            default: next_state = S0;
        endcase
    end

    always @(*) begin
        e2_l=1; e2_r=0; e2_o=0;
        w2_l=1; w2_r=0; w2_o=0;
        n2_l=1; n2_r=0; n2_o=0;
        s2_l=1; s2_r=0; s2_o=0;

        case (state)
		S0: begin
			e2_r=1; e2_o=1;
		end
		S1: begin
			e2_o=1;
		end
		S2: begin
			s2_r=1; s2_o=1;
		end
		S3: begin
			s2_o=1;
		end
		S4: begin
			w2_r=1; w2_o=1;
		end
		S5: begin
			w2_o=1;
		end
		S6: begin
			n2_r=1; n2_o=1;
		end
		S7: begin
			n2_o=1;
		end
        endcase
    end
endmodule
