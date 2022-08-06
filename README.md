# IP Verification of Pulpino SPI Master block
This project aims at IP-Verification of a RTL block

# Block Diagram
![ip_rtl](https://user-images.githubusercontent.com/104111334/165579182-e3472e57-446e-48bb-b283-da18c256bc94.png)

# Key Features of RTL 
1. Standard SPI mode
2. Full Duplex System
3. Single master SPI and single slave SPI
4. Single master APB and single slave APB
5. Serial transfer in SPI
6. Clock divider
7. Asynchronous active low hard reset
8. Software reset
9. SPI transfer length
10. Appending Dummy Data 
11. Separate TXFIFO and RXFIFO
12. Interrupt Configuration

# Testbench Architecture Diagram
![IP_TB_architecture drawio](https://user-images.githubusercontent.com/104111334/165579218-6bcac4af-4bdc-4b23-8bab-0b8b5489d6bd.png)

# Developers, Welcome
We believe in growing together and if you'd like to contribute, please do check out the contributing guide below:  
https://github.com/mbits-mirafra/pulpino__spi_master__ip_verification/blob/development_branch_v1/contribution_guidelines.md

# Installation - Get the VIP collateral from the GitHub repository

```
# Checking for git software, open the terminal type the command
git version

# Get the VIP collateral
git clone git@github.com:mbits-mirafra/pulpino__spi_master__ip_verification.git
```

# Running the test

### Using Mentor's Questasim simulator 

```
cd pulpino__spi_master__ip_verification/sim/questasim

# Compilation:  
make compile

# Simulation:
make simulate test=<test_name> uvm_verbosity=<VERBOSITY_LEVEL>

ex: make simulate test=pulpino_spi_master_ip_basic_write_read_reg_test uvm_verbosity=UVM_HIGH

# Note: You can find all the test case names in the path given below   
pulpino__spi_master__ip_verification/src/hvl_top/testlists/pulpino_spi_master_ip_verification_regression.list

# Wavefrom:  
vsim -view <test_name>/waveform.wlf &

ex: vsim -view pulpino_spi_master_ip_basic_write_read_reg_test/waveform.wlf &

# Regression:
make regression testlist_name=<regression_testlist_name.list>
ex: make regression testlist_name=pulpino_spi_master_ip_verification_regression.list

# Coverage: 
 ## Individual test:
 firefox <test_name>/html_cov_report/index.html &
 ex: firefox pulpino_spi_master_ip_basic_write_read_reg_test/html_cov_report/index.html &

 ## Regression:
 firefox merged_cov_html_report/index.html &

```

### Using Cadence's Xcelium simulator 

```
cd pulpino__spi_master__ip_verification/sim/cadence_sim

# Compilation:  
make compile

# Simulation:
make simulate test=<test_name> uvm_verbosity=<VERBOSITY_LEVEL>

ex: make simulate test=pulpino_spi_master_ip_basic_write_read_reg_test uvm_verbosity=UVM_HIGH

# Note: You can find all the test case names in the path given below   
pulpino__spi_master__ip_verification/src/hvl_top/testlists/pulpino_spi_master_ip_verification_regression.list

# Wavefrom:  
simvision waves.shm/ &

# Regression:
make regression testlist_name=<regression_testlist_name.list>
ex: make regression testlist_name=pulpino_spi_master_ip_verification_regression.list

# Coverage:   
imc -load cov_work/scope/test/ &
```

## Technical Document 
https://github.com/mbits-mirafra/pulpino__spi_master__ip_verification/blob/development_branch_v1/doc/ip_verification_architectural_document.pdf    

## User Guide  
https://github.com/mbits-mirafra/pulpino__spi_master__ip_verification/blob/development_branch_v1/doc/user_guide.pdf 

## Contact Mirafra Team  
You can reach out to us over mbits@mirafra.com

For more information regarding Mirafra Technologies please do checkout our officail website:  
https://mirafra.com/

