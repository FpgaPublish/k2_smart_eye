##################################################################################
## Company: fpgaPublish
## Engineer: f
## 
## Create Date: 2023/10/26 22:40:42
## Design Name: file_phase
## Module Name: 
## Project Name: 
## Target Devices: 
## Tool Versions: 
## Description: 
## 
## Dependencies: 
##  
## Revision: 
## Revision 0.01 - File Created 
## Additional Comments:
## 
##################################################################################
function [r1] = file_phase(   %
                            i1 %scene
);

# ================================================================================
# pre-function to init env
pwd 
addpath("./lib_func");
# ================================================================================
# data calculate and solve
# --------------------------------------------------------------------------------
# scene 1: demo file read and save
if(i1 == 0 || i1 == 1)
    #scan imag
    l_img = scan_imag_func(0);
    n_img = size(l_img,1)
    if(n_img > 0)
        im = l_img{1};
    end 
    #save imag
    save_imag_func("scan1.dat",im);
    #write to sim
    move_sim_func("scan1.dat");
end 
r1 = 0;
# ================================================================================
# result display

# ================================================================================
# assert if get right 

endfunction