function malat_open(filename)

global malat_fid

if nargin == 0
  filename = 'malat_currdir.sty';
end

malat_fid = fopen(filename,'w');

fprintf(malat_fid,'\\newcommand\\M[1]{\\csname matlab-#1\\endcsname}\n');

end