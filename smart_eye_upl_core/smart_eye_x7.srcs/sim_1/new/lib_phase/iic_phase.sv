//class define 
`include "../public_file/public_macro.svh"
class iic_phase;             
    //  Group: Variables     
    integer i,j,k,m,n;   
    virtual iic_interface iic_itf;    
    //  Group: Constraints   
                             
                             
    //  Group: Functions     
    extern task run_in_back();                        
    //  Constructor: new     
    function new(            
        virtual iic_interface iic_itf 
    );
        this.iic_itf = iic_itf;                     
    endfunction: new         
                             
                             
endclass: iic_phase          

task iic_phase::run_in_back();
    // --------------------------------------------------------------------
    // iic: idle
    iic_itf.sda_o = 0;
    iic_itf.sda_t = 1;
    
    #1000;
    iic_itf.assert_flg = 1;
    // --------------------------------------------------------------------
    // iic: feedback
    i = 0;
    while(i < 100)
    begin
        @(posedge iic_itf.scl)
        if(iic_itf.sda === 1'bz)
        begin
            iic_itf.sda_o = ~iic_itf.sda_o;
            iic_itf.sda_t = 0;
        end
        else 
        begin
            iic_itf.sda_o = 0;
            iic_itf.sda_t = 1;
        end
        @(negedge iic_itf.scl)
        begin
            //iic_itf.sda_o = 0;
            iic_itf.sda_t = 1;
        end
        i = i + 1;
    end
    
    // --------------------------------------------------------------------
    // iic: idle
    iic_itf.sda_o = 0;
    iic_itf.sda_t = 1;
    
    #1000;
    iic_itf.assert_flg = 0;
endtask
