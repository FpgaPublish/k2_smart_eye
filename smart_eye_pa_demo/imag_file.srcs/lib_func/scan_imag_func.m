##################################################################################
## Company: fpgaPublish
## Engineer: f
## 
## Create Date: 2023/10/26 22:44:33
## Design Name: scan_imag_func
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

function [r1] = scan_imag_func(   %
                                    i1 %
);

# ================================================================================
# add path
p_file = pwd
l_file = glob("./input_imags/*")

# ================================================================================
# scan read bmp file
numb = rows(l_file);
j = 0;
for i = 1 : numb
    name = l_file(i,:);
    if (regexp(name{1},'.*\w+\.bmp.*') == 1)
        j = j + 1;
        l_name{j} = name{1};
    end
end
numb_file = j

# ================================================================================
# plot imag 
for i = 1 : numb_file
    im = imread(l_name{i});
    if(i1 == 0)
        subplot(numb_file,1,i);
        imshow(im);
        t_name = strcat("scan imag",num2str(i))
        title(strcat("scan imag",num2str(i)));
    end 
    r1{i} = im;
end

endfunction
