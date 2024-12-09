
module blinky(
    input clk_n,
    input clk_p,
    output [7:0] led
    );
    wire clk;

   IBUFGDS #(
        .DIFF_TERM   ("FALSE"),
        .IBUF_LOW_PWR("TRUE" ),
        .IOSTANDARD  ("LVDS" )
    ) get_clk (
        .O(clk   ),
        .I(clk_p ),
        .IB(clk_n)
    );



// --> architecture

    // reg: signale innerhalb des modules
    // VHDL --> signal count: integer range 0 to 2^24 - 1
    reg [30:0] count = 0;

    // immer wenn eine steigende takt erkannt wird
    always @ (posedge(clk)) count <= count + 1;

    assign led[7:0] = count[29:22];
endmodule
