//class define 
`include "../public_file/public_macro.svh"
class cmd_scene;             
    //  Group: Variables     
    virtual iic_interface iic_itf; 
    virtual uart_interface uart_itf;  
    
    integer i,j,k,m,n;
    //  GROUP: phase
    uart_phase uart_phs;     
    iic_phase  iic_phs;                 
    //  Group: Constraints   
    logic  [`WD_CMD_DATA-1:0] cmd_data [0:`NB_CMD_ORDE-1];                       
                             
    //  Group: Functions     
    extern task run_write_uart_cmd();
    //  Constructor: new     
    function new(
        virtual uart_interface uart_itf,
        virtual iic_interface  iic_itf
        
    );          
        this.iic_itf = iic_itf;
        this.uart_itf = uart_itf;                        
    endfunction: new         
    
endclass: cmd_scene          

task cmd_scene::run_write_uart_cmd();
fork
    begin
        // --------------------------------------------------------------------
        // iic phase
        iic_phs = new(iic_itf);
        iic_phs.run_in_back();
        #1000
        iic_phs = null;
    end 
    begin 
        // --------------------------------------------------------------------
        // uart class init
        uart_phs = new(uart_itf);
        i = 0;
        repeat(`NB_CMD_ORDE)
        begin
            cmd_data[i] = i;
            i = i + 1;
        end
        //run cmd write
        uart_phs.run_send_cmd(cmd_data,`NB_CMD_ADDR_1);
        //release interface
        #1000;
        uart_phs = null;
    end 
join 
    
endtask