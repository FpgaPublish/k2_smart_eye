function [r1] = move_sim_func(   %
                                    i1 %
);
# --------------------------------------------------------------------------------
# copy data to sim
p_own = pwd
p_own_last = strsplit(p_own,'.');
p_dst_l = strcat(p_own_last(1,1),'.sims\input_data\');
mkdir(p_dst_l{1,1});
p_src='.\output_data\';
pns_src = strcat(p_src,i1)
copyfile(pns_src,p_dst_l{1,1},'f');
# --------------------------------------------------------------------------------
# feedback ok
r1 = 0;
endfunction