`ifndef PULPINO_SPI_MASTER_IP_ENV_PKG_INCLUDED_
`define PULPINO_SPI_MASTER_IP_ENV_PKG_INCLUDED_

//--------------------------------------------------------------------------------------------
// Package: pulpino_spi_master_ip_env_pkg
// Includes all the files related to pulpino_spi_master_ip env
//--------------------------------------------------------------------------------------------
package pulpino_spi_master_ip_env_pkg;
  
  //-------------------------------------------------------
  // Importing uvm packages
  //-------------------------------------------------------
  `include "uvm_macros.svh"
  import uvm_pkg::*;

  //-------------------------------------------------------
  // Importing the required packages
  //-------------------------------------------------------
  import apb_global_pkg::*;
  import spi_globals_pkg::*;
  import apb_master_pkg::*;
  import spi_slave_pkg::*;

  //-------------------------------------------------------
  // Including the required files
  //-------------------------------------------------------
  `include "pulpino_spi_master_ip_env_config.sv"
  `include "pulpino_spi_master_ip_virtual_sequencer.sv"
  `include "pulpino_spi_master_ip_scoreboard.sv"
  `include "apb_master_collector.sv"
  `include "spi_slave_collector.sv"
  `include "pulpino_spi_master_ip_env.sv"

endpackage : pulpino_spi_master_ip_env_pkg

`endif