`ifndef APB_MASTER_HDL_TOP_INCLUDED_
`define APB_MASTER_HDL_TOP_INCLUDED_

//--------------------------------------------------------------------------------------------
// Module      : HDL Top
// Description : Has a interface and slave agent bfm.
//--------------------------------------------------------------------------------------------
module apb_master_hdl_top;

  import uvm_pkg::*;
  import apb_global_pkg::*;
  `include "uvm_macros.svh"

  //-------------------------------------------------------
  // Clock Reset Initialization
  //-------------------------------------------------------
 // bit clk;
  //bit rst;

  //-------------------------------------------------------
  // Display statement for apb_master_hdl_top
  //-------------------------------------------------------
  initial begin
    `uvm_info("UVM_INFO","apb_master_hdl_top",UVM_LOW);
    $display("HDL TOP");
  end

  //Variable : pclk
  //Declaration of system clock
  bit pclk;

  //Variable : preset_n
  //Declaration of system reset
  bit preset_n;

  //-------------------------------------------------------
  //Generation of system clock at frequency rate of 20ns
  //-------------------------------------------------------
  initial begin
    pclk = 1'b0;
    forever #10 pclk =!pclk;
  end

  //-------------------------------------------------------
  //Generation of system preset_n
  //system reset can be asserted asynchronously
  //system reset de-assertion is synchronous.
  //-------------------------------------------------------
  initial begin
    preset_n = 1'b1;
    
    #15 preset_n = 1'b0;

    repeat(1) begin
      @(posedge pclk);
    end
    preset_n = 1'b1;
  end

  //-------------------------------------------------------
  // apb Interface Instantiation
  //-------------------------------------------------------
  apb_if intf(pclk,preset_n);

  //-------------------------------------------------------
  // apb Master BFM Agent Instantiation
  //-------------------------------------------------------
  apb_master_agent_bfm apb_master_agent_bfm_h(intf); 
  
  //-------------------------------------------------------
  // apb slave BFM Agent Instantiation
  //-------------------------------------------------------
 // genvar i;
 // generate
 //   for (i=0; i < NO_OF_SLAVES; i++) begin : apb_slave_agent_bfm
 //     apb_slave_agent_bfm #(.SLAVE_ID(i)) apb_slave_agent_bfm_h(intf);
 //     defparam apb_slave_agent_bfm[i].apb_slave_agent_bfm_h.SLAVE_ID = i;
 //   end
 // endgenerate

endmodule : apb_master_hdl_top

`endif
