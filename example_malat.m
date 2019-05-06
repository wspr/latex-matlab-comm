%% Example of MALAT

malat_open('example_malat_defs.sty');

malat_def('a',0.3); % defines "a=0.3" in Matlab

b = 10*a^2;
malat_print('b1',b); % does not
malat_print('b');

% optionally define floating point printing parameters:
malat_print('PI',pi,'1.4f')

malat_close();
