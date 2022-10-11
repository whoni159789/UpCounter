`timescale 1ns / 1ps

module UpCounter(
    input i_clk,
    input i_reset,
    output [3:0] o_FND_Digit,
    output [7:0] o_FND_Font
    );

    wire r_digit_clk;
    wire [1:0] r_digitPosition;

    wire r_data_clk;
    wire [13:0] r_data;
    wire [3:0] r_1000, r_100, r_10, r_1;
    wire [3:0] r_value;

    // Digit Part
    ClockDivider_Digit CountDivDigit(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(r_digit_clk)
    );

    Counter_FND CountFND(
        .i_clk(r_digit_clk),
        .i_reset(i_reset),
        .o_counter(r_digitPosition) 
    );

    Decoder_2x4 DigitSelect(
        .i_digitPosition(r_digitPosition),
        .o_Digit(o_FND_Digit)
    );

    // Value Part
    ClockDivider_Data CountDivData(
        .i_clk(i_clk),
        .i_reset(i_reset),
        .o_clk(r_data_clk)
    );

    Counter_Data CountData(
        .i_clk(r_data_clk),
        .i_reset(i_reset),
        .o_value(r_data)
    );

    digit_Divider DigDiv(
        .i_value(r_data),
        .o_1000(r_1000), 
        .o_100(r_100), 
        .o_10(r_10), 
        .o_1(r_1)
    );

    MUX_4x1 SelVal(
        .i_1000(r_1000),
        .i_100(r_100),
        .i_10(r_10),
        .i_1(r_1),
        .i_digitPosition(r_digitPosition),
        .o_value(r_value)
    );

    BCDToFND_Decoder ToFNDFont(
        .i_value(r_value),
        .o_Font(o_FND_Font)
    );

endmodule
