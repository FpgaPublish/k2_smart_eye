//class define 
`include "../public_file/public_macro.svh"
class sensor_phase;             
    //  Group: Variables     
    integer i,j,k,m,n; 
    virtual sensor_interface sensor_itf;      
    //  Group: Constraints   
                             
                             
    //  Group: Functions     
    extern task run_in_normal();                         
    //  Constructor: new     
    function new(            
        virtual sensor_interface sensor_itf                     
    );
        this.sensor_itf = sensor_itf;                     
    endfunction: new         
                             
                             
endclass: sensor_phase          

task sensor_phase::run_in_normal();
    //idle wat
    #10000;
    //open assert check
    sensor_itf.assert_flg = 1;
    //init 
    sensor_itf.href = 0;
    sensor_itf.vsyn = 0;
    //cmos timing
    repeat(10)
    begin
        @(posedge sensor_itf.pclk)
        sensor_itf.vsyn = 1;
        repeat(`NB_CMOS_HEIGH + `NB_CMOS_PHEAD)
        begin
            sensor_itf.data = 0;
            repeat(`NB_CMOS_WIDTH)
            begin
                @(posedge sensor_itf.pclk)
                sensor_itf.href = 1;
                sensor_itf.data = sensor_itf.data + 1'b1;
            end
                @(posedge sensor_itf.pclk)
                sensor_itf.href = 0;
            repeat(10)
            begin
                @(posedge sensor_itf.pclk)
                sensor_itf.vsyn = 0;
            end
        end 
        @(posedge sensor_itf.pclk)
        sensor_itf.vsyn = 0;
        repeat(10)
        begin
            @(posedge sensor_itf.pclk)
            sensor_itf.vsyn = 0;
        end
        
    end 
    //close assert check
    sensor_itf.assert_flg = 0;
    
endtask