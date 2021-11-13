// ==============================================================
// File generated on Mon Nov 08 23:24:38 +0800 2021
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
// SW Build 2405991 on Thu Dec  6 23:38:27 MST 2018
// IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module pro_int_trans_AXILiteS_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 7,
    C_S_AXI_DATA_WIDTH = 32
)(
    // axi4 lite slave signals
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    // user signals
    input  wire [31:0]                   c_int,
    input  wire                          c_int_ap_vld,
    output wire [31:0]                   x_int,
    output wire [31:0]                   y1_int,
    output wire [31:0]                   y2_int,
    output wire [31:0]                   k_int,
    output wire [31:0]                   l_int,
    output wire [31:0]                   m_int,
    output wire [31:0]                   p_int,
    output wire [31:0]                   q_int,
    output wire [31:0]                   r_int,
    output wire [31:0]                   s_int,
    output wire [31:0]                   u_int,
    output wire [31:0]                   v_int,
    output wire [31:0]                   w_int
);
//------------------------Address Info-------------------
// 0x00 : reserved
// 0x04 : reserved
// 0x08 : reserved
// 0x0c : reserved
// 0x10 : Data signal of c_int
//        bit 31~0 - c_int[31:0] (Read)
// 0x14 : Control signal of c_int
//        bit 0  - c_int_ap_vld (Read/COR)
//        others - reserved
// 0x18 : Data signal of x_int
//        bit 31~0 - x_int[31:0] (Read/Write)
// 0x1c : reserved
// 0x20 : Data signal of y1_int
//        bit 31~0 - y1_int[31:0] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of y2_int
//        bit 31~0 - y2_int[31:0] (Read/Write)
// 0x2c : reserved
// 0x30 : Data signal of k_int
//        bit 31~0 - k_int[31:0] (Read/Write)
// 0x34 : reserved
// 0x38 : Data signal of l_int
//        bit 31~0 - l_int[31:0] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of m_int
//        bit 31~0 - m_int[31:0] (Read/Write)
// 0x44 : reserved
// 0x48 : Data signal of p_int
//        bit 31~0 - p_int[31:0] (Read/Write)
// 0x4c : reserved
// 0x50 : Data signal of q_int
//        bit 31~0 - q_int[31:0] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of r_int
//        bit 31~0 - r_int[31:0] (Read/Write)
// 0x5c : reserved
// 0x60 : Data signal of s_int
//        bit 31~0 - s_int[31:0] (Read/Write)
// 0x64 : reserved
// 0x68 : Data signal of u_int
//        bit 31~0 - u_int[31:0] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of v_int
//        bit 31~0 - v_int[31:0] (Read/Write)
// 0x74 : reserved
// 0x78 : Data signal of w_int
//        bit 31~0 - w_int[31:0] (Read/Write)
// 0x7c : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_C_INT_DATA_0  = 7'h10,
    ADDR_C_INT_CTRL    = 7'h14,
    ADDR_X_INT_DATA_0  = 7'h18,
    ADDR_X_INT_CTRL    = 7'h1c,
    ADDR_Y1_INT_DATA_0 = 7'h20,
    ADDR_Y1_INT_CTRL   = 7'h24,
    ADDR_Y2_INT_DATA_0 = 7'h28,
    ADDR_Y2_INT_CTRL   = 7'h2c,
    ADDR_K_INT_DATA_0  = 7'h30,
    ADDR_K_INT_CTRL    = 7'h34,
    ADDR_L_INT_DATA_0  = 7'h38,
    ADDR_L_INT_CTRL    = 7'h3c,
    ADDR_M_INT_DATA_0  = 7'h40,
    ADDR_M_INT_CTRL    = 7'h44,
    ADDR_P_INT_DATA_0  = 7'h48,
    ADDR_P_INT_CTRL    = 7'h4c,
    ADDR_Q_INT_DATA_0  = 7'h50,
    ADDR_Q_INT_CTRL    = 7'h54,
    ADDR_R_INT_DATA_0  = 7'h58,
    ADDR_R_INT_CTRL    = 7'h5c,
    ADDR_S_INT_DATA_0  = 7'h60,
    ADDR_S_INT_CTRL    = 7'h64,
    ADDR_U_INT_DATA_0  = 7'h68,
    ADDR_U_INT_CTRL    = 7'h6c,
    ADDR_V_INT_DATA_0  = 7'h70,
    ADDR_V_INT_CTRL    = 7'h74,
    ADDR_W_INT_DATA_0  = 7'h78,
    ADDR_W_INT_CTRL    = 7'h7c,
    WRIDLE             = 2'd0,
    WRDATA             = 2'd1,
    WRRESP             = 2'd2,
    WRRESET            = 2'd3,
    RDIDLE             = 2'd0,
    RDDATA             = 2'd1,
    RDRESET            = 2'd2,
    ADDR_BITS         = 7;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [31:0]                   wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [31:0]                   rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg  [31:0]                   int_c_int = 'b0;
    reg                           int_c_int_ap_vld;
    reg  [31:0]                   int_x_int = 'b0;
    reg  [31:0]                   int_y1_int = 'b0;
    reg  [31:0]                   int_y2_int = 'b0;
    reg  [31:0]                   int_k_int = 'b0;
    reg  [31:0]                   int_l_int = 'b0;
    reg  [31:0]                   int_m_int = 'b0;
    reg  [31:0]                   int_p_int = 'b0;
    reg  [31:0]                   int_q_int = 'b0;
    reg  [31:0]                   int_r_int = 'b0;
    reg  [31:0]                   int_s_int = 'b0;
    reg  [31:0]                   int_u_int = 'b0;
    reg  [31:0]                   int_v_int = 'b0;
    reg  [31:0]                   int_w_int = 'b0;

//------------------------Instantiation------------------

//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 1'b0;
            case (raddr)
                ADDR_C_INT_DATA_0: begin
                    rdata <= int_c_int[31:0];
                end
                ADDR_C_INT_CTRL: begin
                    rdata[0] <= int_c_int_ap_vld;
                end
                ADDR_X_INT_DATA_0: begin
                    rdata <= int_x_int[31:0];
                end
                ADDR_Y1_INT_DATA_0: begin
                    rdata <= int_y1_int[31:0];
                end
                ADDR_Y2_INT_DATA_0: begin
                    rdata <= int_y2_int[31:0];
                end
                ADDR_K_INT_DATA_0: begin
                    rdata <= int_k_int[31:0];
                end
                ADDR_L_INT_DATA_0: begin
                    rdata <= int_l_int[31:0];
                end
                ADDR_M_INT_DATA_0: begin
                    rdata <= int_m_int[31:0];
                end
                ADDR_P_INT_DATA_0: begin
                    rdata <= int_p_int[31:0];
                end
                ADDR_Q_INT_DATA_0: begin
                    rdata <= int_q_int[31:0];
                end
                ADDR_R_INT_DATA_0: begin
                    rdata <= int_r_int[31:0];
                end
                ADDR_S_INT_DATA_0: begin
                    rdata <= int_s_int[31:0];
                end
                ADDR_U_INT_DATA_0: begin
                    rdata <= int_u_int[31:0];
                end
                ADDR_V_INT_DATA_0: begin
                    rdata <= int_v_int[31:0];
                end
                ADDR_W_INT_DATA_0: begin
                    rdata <= int_w_int[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign x_int  = int_x_int;
assign y1_int = int_y1_int;
assign y2_int = int_y2_int;
assign k_int  = int_k_int;
assign l_int  = int_l_int;
assign m_int  = int_m_int;
assign p_int  = int_p_int;
assign q_int  = int_q_int;
assign r_int  = int_r_int;
assign s_int  = int_s_int;
assign u_int  = int_u_int;
assign v_int  = int_v_int;
assign w_int  = int_w_int;
// int_c_int
always @(posedge ACLK) begin
    if (ARESET)
        int_c_int <= 0;
    else if (ACLK_EN) begin
        if (c_int_ap_vld)
            int_c_int <= c_int;
    end
end

// int_c_int_ap_vld
always @(posedge ACLK) begin
    if (ARESET)
        int_c_int_ap_vld <= 1'b0;
    else if (ACLK_EN) begin
        if (c_int_ap_vld)
            int_c_int_ap_vld <= 1'b1;
        else if (ar_hs && raddr == ADDR_C_INT_CTRL)
            int_c_int_ap_vld <= 1'b0; // clear on read
    end
end

// int_x_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_x_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_X_INT_DATA_0)
            int_x_int[31:0] <= (WDATA[31:0] & wmask) | (int_x_int[31:0] & ~wmask);
    end
end

// int_y1_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_y1_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y1_INT_DATA_0)
            int_y1_int[31:0] <= (WDATA[31:0] & wmask) | (int_y1_int[31:0] & ~wmask);
    end
end

// int_y2_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_y2_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Y2_INT_DATA_0)
            int_y2_int[31:0] <= (WDATA[31:0] & wmask) | (int_y2_int[31:0] & ~wmask);
    end
end

// int_k_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_k_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_K_INT_DATA_0)
            int_k_int[31:0] <= (WDATA[31:0] & wmask) | (int_k_int[31:0] & ~wmask);
    end
end

// int_l_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_l_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_L_INT_DATA_0)
            int_l_int[31:0] <= (WDATA[31:0] & wmask) | (int_l_int[31:0] & ~wmask);
    end
end

// int_m_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_m_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M_INT_DATA_0)
            int_m_int[31:0] <= (WDATA[31:0] & wmask) | (int_m_int[31:0] & ~wmask);
    end
end

// int_p_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_p_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_P_INT_DATA_0)
            int_p_int[31:0] <= (WDATA[31:0] & wmask) | (int_p_int[31:0] & ~wmask);
    end
end

// int_q_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_q_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_Q_INT_DATA_0)
            int_q_int[31:0] <= (WDATA[31:0] & wmask) | (int_q_int[31:0] & ~wmask);
    end
end

// int_r_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_r_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_R_INT_DATA_0)
            int_r_int[31:0] <= (WDATA[31:0] & wmask) | (int_r_int[31:0] & ~wmask);
    end
end

// int_s_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_s_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_S_INT_DATA_0)
            int_s_int[31:0] <= (WDATA[31:0] & wmask) | (int_s_int[31:0] & ~wmask);
    end
end

// int_u_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_u_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_U_INT_DATA_0)
            int_u_int[31:0] <= (WDATA[31:0] & wmask) | (int_u_int[31:0] & ~wmask);
    end
end

// int_v_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_v_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_V_INT_DATA_0)
            int_v_int[31:0] <= (WDATA[31:0] & wmask) | (int_v_int[31:0] & ~wmask);
    end
end

// int_w_int[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_w_int[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_W_INT_DATA_0)
            int_w_int[31:0] <= (WDATA[31:0] & wmask) | (int_w_int[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
