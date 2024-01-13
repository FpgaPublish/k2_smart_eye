//class define 
`include "../public_file/public_macro.svh"
class camera_scene;             
    //  Group: Variables     
    integer i,j,k,m,n;       
    virtual sensor_interface sensor_itf; 
    sensor_phase sensor_phs;
    //  Group: Constraints   
                             
                             
    //  Group: Functions     
    extern task run_cmos_camera();                         
    //  Constructor: new     
    function new(            
        virtual sensor_interface sensor_itf                     
    );
        this.sensor_itf = sensor_itf;                    
    endfunction: new         
                             
                             
endclass: camera_scene          

task camera_scene::run_cmos_camera();
fork
    begin
        // --------------------------------------------------------------------
        // camera phase
        sensor_phs = new(sensor_itf);
        sensor_phs.run_in_normal();
        #1000
        sensor_phs = null;
    end 
join
endtask //automatic