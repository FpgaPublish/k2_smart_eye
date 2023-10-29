class main_phase;
    file_phase file_phs;
    virtual data_interface data_itf;
    function new(input virtual data_interface data_itf);
        this.data_itf = data_itf;
    endfunction //new()
    extern task run();
endclass //main_phase

task main_phase::run();
// --------------------------------------------------------------------
// file phase
    file_phs = new(data_itf);
    file_phs.run();
    file_phs = null;
    $display("file_phs init ok");


endtask