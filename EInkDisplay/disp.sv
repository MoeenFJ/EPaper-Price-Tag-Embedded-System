
module spi_display_emulator (
    input wire sck,
    input wire mosi
);

    parameter WIDTH = 296;
    parameter HEIGHT = 152;

    reg [47:0] shift_reg;
    integer bit_cnt;
    integer x, y;
    integer fd;
    reg [7:0] cmd;

    initial begin
        bit_cnt = 0;
        shift_reg = 48'd0;
        
        fd = $fopen("/tmp/spi_display_pipe", "w");
        if (fd == 0) begin
            $display("[ERROR] Could not open /tmp/spi_display_pipe. Did you run 'mkfifo /tmp/spi_display_pipe'?");
        end else begin
            $display("[INFO] Connected to Linux IPC Pipe.");
        end
    end

    always @(posedge sck) begin
        shift_reg = {shift_reg[46:0], mosi};
        bit_cnt = bit_cnt + 1;

        if (bit_cnt == 8 && shift_reg[7:0] == 8'h01) begin
            bit_cnt = 0;
            if (fd) begin
                $fwrite(fd, "clear\n");
                $fflush(fd);
            end
        end else if (bit_cnt == 48) begin
            bit_cnt = 0;
            cmd = shift_reg[47:40];
            
            if (cmd == 8'h00) begin
                x = shift_reg[39:24];
                y = shift_reg[23:8];
                
                if (x < WIDTH && y < HEIGHT) begin
                    if (fd) begin
                        $fwrite(fd, "%04x,%04x,%02x\n", x, y, shift_reg[7:0]);
                        $fflush(fd);
                    end
                end else begin
                    $display("[WARNING] SPI Disp: Out of bounds write at X=%0d, Y=%0d", x, y);
                end
            end
        end
    end

endmodule