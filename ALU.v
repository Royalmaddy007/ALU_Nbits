module aluNbit(
    input [n:0]A,B,
    input [4:0]sel,
	 input clock,
	 output reg [n:0]out,
	 output reg cout);
	 parameter n=16;
    wire [n:0]w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31,w32;
    wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32;
    assign {c1,w1}=add(A,B);
    assign {c2,w2}=sub(A,B);
    assign {c3,w3}=inc(A);
    assign {c4,w4}=dec(A);
    assign {c5,w5}=cmp(A);
    assign {c6,w6}={1'b0,and1(A,B)};
    assign {c7,w7}={1'b0,or1(A,B)};
    assign {c8,w8}={1'b0,xor1(A,B)};
	 assign {c9,w9}=inc(B);
    assign {c10,w10}=dec(B);
    assign {c11,w11}=cmp(B);
	 assign {c12,w12}={1'b0,not1(A)};
	 assign {c13,w13}={1'b0,not1(B)};
	 assign {c14,w14}={1'b0,shift_left(A)};
	 assign {c15,w15}={1'b0,shift_left(B)};
	 assign {c16,w16}={1'b0,shift_right(A)};
	 assign {c17,w17}={1'b0,shift_right(B)};
	 assign {c18,w18}={1'b0,rotate_left(A)};
	 assign {c19,w19}={1'b0,rotate_left(B)};
	 assign {c20,w20}={1'b0,rotate_right(A)};
	 assign {c21,w21}={1'b0,rotate_right(B)};
	 assign {c22,w22}={slt(A,B),n-1'b0};
	 assign {c23,w23}={slt(B,A),n-1'b0};
	 assign {c24,w24}={eq(A,B),n-1'b0};
	 assign {c25,w25}={bitwise_and(A),n-1'b0};
	 assign {c26,w26}={bitwise_and(B),n-1'b0};
	 assign {c27,w27}={bitwise_or(A),n-1'b0};
	 assign {c28,w28}={bitwise_or(B),n-1'b0};
	 assign {c29,w29}={bitwise_xor(A),n-1'b0};
	 assign {c30,w30}={bitwise_xor(B),n-1'b0};
	 assign {c31,w31}={bitwise_xnor(A),n-1'b0};
	 assign {c32,w32}={bitwise_xnor(B),n-1'b0};
	 
    always@(*)
        begin
            case(sel)
                5'b00000:begin out=w1;cout=c1;
            end
                5'b00001:begin out=w2;cout=c2;
            end
                5'b00010:begin out=w3;cout=c3;
            end
                5'b00011:begin out=w4;cout=c4;
            end
                5'b00100:begin out=w5;cout=c5;
            end
                5'b00101:begin out=w6;cout=c6;
            end
                5'b00110:begin out=w7;cout=c7;
            end
                5'b00111:begin out=w8;cout=c8;
            end
		5'b01000:begin out=w9;cout=c9;
            end
		5'b01001:begin out=w10;cout=c10;
            end
		5'b01010:begin out=w11;cout=c11;
            end
		5'b01011:begin out=w12;cout=c12;
            end
		5'b01100:begin out=w13;cout=c13;
            end
		5'b01101:begin out=w14;cout=c14;
            end
		5'b01110:begin out=w15;cout=c15;
            end
		5'b01111:begin out=w16;cout=c16;
            end
		5'b10000:begin out=w17;cout=c17;
            end
		5'b10001:begin out=w18;cout=c18;
            end
		5'b10010:begin out=w19;cout=c19;
            end
		5'b10011:begin out=w20;cout=c20;
            end
		5'b10100:begin out=w21;cout=c21;
            end
		5'b10101:begin out=w22;cout=c22;
            end
		5'b10110:begin out=w23;cout=c23;
            end
		5'b10111:begin out=w24;cout=c24;
            end
		5'b11000:begin out=w25;cout=c25;
            end
		5'b11001:begin out=w26;cout=c26;
            end
		5'b11010:begin out=w27;cout=c27;
            end
		5'b11011:begin out=w28;cout=c28;
            end
		5'b11100:begin out=w29;cout=c29;
            end
		5'b11101:begin out=w30;cout=c30;
            end
		5'b11110:begin out=w31;cout=c31;
            end
		5'b11111:begin out=w32;cout=c32;
            end
            endcase
        end

//ALU Functions
    function [(n+1):0]add;
        input [n:0]A,B;
        begin
            add=A+B;
        end
    endfunction
    function [(n+1):0]sub;
        input [n:0]a,b;
        sub=a-b;
    endfunction
    function [(n+1):0]inc;
        input [n:0]a;
        inc=a+1;
    endfunction
    function [(n+1):0]dec;
        input [n:0]a;
        dec=a-1;
    endfunction
    function [(n+1):0]cmp;
        input [n:0]a;
        cmp={1'b0,~A}+1'b1;
    endfunction
    function [n:0]and1;
        input [n:0]a,b;
        and1=a&b;
    endfunction
    function [n:0]or1;
        input [n:0]a,b;
        or1=a|b;
    endfunction
    function [n:0]xor1;
        input [n:0]a,b;
        xor1=a^b;
    endfunction
    function [n:0]not1;
        input [n:0]a;
        not1=~a;
    endfunction
	 function [n:0]shift_left;
		input [n:0]a;
		shift_left={a[n-1:0],1'b0};
		endfunction
	 function [n:0]shift_right;
		input [n:0]a;
		shift_right={1'b0,a[n:1]};
		endfunction
	 function [n:0]rotate_left;
		input [n:0]a;
		rotate_left={a[n-1:0],a[n]};
		endfunction
	 function [n:0]rotate_right;
		input [n:0]a;
		rotate_right={a[0],a[n:1]};
		endfunction
	function slt;
		input [n:0]a,b;
		slt=a<b;
		endfunction
	function eq;
		input [n:0]a,b;
		eq=(a==b);
		endfunction
	function bitwise_and;
		input [n:0]a;
		bitwise_and=(&a);
		endfunction
	function bitwise_or;
		input [n:0]a;
		bitwise_or=(|a);
		endfunction
	function bitwise_xor;
		input [n:0]a;
		bitwise_xor=(^a);
		endfunction
	function bitwise_xnor;
		input [n:0]a;
		bitwise_xnor=~(^a);
		endfunction
endmodule
