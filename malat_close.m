function malat_close()

global malat_fid
fprintf(malat_fid,'%%%%%%%% MALAT DATA FILE FROM MATLAB, DO NOT EDIT %%%%%%%%\n');
fclose(malat_fid);

end