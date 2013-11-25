module blackjack_machine(clk, rst, stay_btn, hit_btn, mem, lose_led, win_led);
  input clk, rst, stay_btn, hit_btn;
  input [3:0] mem;
  output lose_led, win_led;
  
  reg lose_led, win_led;
  
  parameter INIT=3'b000, PLAYER=3'b001, DEALER=3'b010, RESULT=3'b011;
  
  reg rst_flag;
  reg [2:0] state, next_state;
  reg [4:0] p_buffer, d_buffer;
  
////////////////////////////////////////////////////////////////////////////
// Política de troca
////////////////////////////////////////////////////////////////////////////
  always @ (stay or hit) begin
    case (state) begin
      
      INIT: begin
        if(rst_flag == 1'b1 && p_buffer == 3'b000 && d_buffer == 3'b000) begin
          next_state = PLAYER;
        end
      end
      
      PLAYER: begin
        if(hit == 1'b1) begin
          p_buffer = p_buffer + mem;
        end else begin
          next_state = 
        end
      end
      
    end
  end
  
endmodule
