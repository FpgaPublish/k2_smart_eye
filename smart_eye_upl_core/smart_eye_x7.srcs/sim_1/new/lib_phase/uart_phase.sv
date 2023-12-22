//class define 
`include "../public_file/public_macro.svh"
class uart_phase;             
    //  Group: Variables     
    virtual uart_interface uart_itf;  
    
    integer i,j,k,m,n;
    //  Group: Constraints   
    localparam NB_UART_RATE_DELAY = 10 ** 9 / `NB_UART_RATE;                         
                             
    //  Group: Functions     
    extern task run_send_cmd(
        input [`WD_CMD_DATA-1:0] cmd_data [0:`NB_CMD_ORDE-1],
        input [`WD_CMD_ADDR-1:0] cmd_addr = `NB_CMD_ADDR_1
        
    );                         
    //  Constructor: new     
    function new(            
        virtual uart_interface uart_itf                     
    );
        this.uart_itf = uart_itf;                     
    endfunction: new         
                             
                             
endclass: uart_phase          
task uart_phase::run_send_cmd(
    input [`WD_CMD_DATA-1:0] cmd_data [0:`NB_CMD_ORDE-1],
    input [`WD_CMD_ADDR-1:0] cmd_addr = `NB_CMD_ADDR_1
    );
    
    // --------------------------------------------------------------------
    // uart idle phase
    uart_itf.mtx = 1;
    #10000;
    uart_itf.assert_flg = 1;
    uart_itf.addr = cmd_addr;
    // --------------------------------------------------------------------
    // uart repeat send bit
    i = 0;
    repeat(`NB_CMD_ORDE + 1)
    begin
        j = 0;
        repeat(`WD_CMD_DATA / `WD_BYTE)
        begin
            // --------------------------------------------------------------------
            // uart start bit
            #NB_UART_RATE_DELAY
            uart_itf.mtx = 0;
            // --------------------------------------------------------------------
            // uart byte send 
            k = 0;
            repeat(`WD_BYTE)
            begin
                #NB_UART_RATE_DELAY
                if(i == 0)
                begin
                    uart_itf.mtx = cmd_addr[(j)*`WD_BYTE + k];
                end
                else 
                begin
                    uart_itf.mtx = cmd_data[i-1][(j)*`WD_BYTE + k];
                end
                //next 
                k = k + 1;
            end
            // --------------------------------------------------------------------
            // uart stop bit
            #NB_UART_RATE_DELAY
            uart_itf.mtx = 1;
            // --------------------------------------------------------------------
            // uart idle bit
            #NB_UART_RATE_DELAY
            uart_itf.mtx = 1;
            //next
            j = j + 1;
        end
        //next
        i = i + 1;
    end
    
    #1000;
    uart_itf.assert_flg = 0;
    
endtask