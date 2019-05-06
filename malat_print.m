
function malat_print(s,v,d)

global malat_fid

fid_okay = true;
try
  ftell(malat_fid);
catch
  fid_okay = false;
end

if nargin == 1
  v = evalin('caller',s);
end

if isnumeric(v)
  if nargin > 2
    fprintf(1,['%s = %',d,'\n'],s,v);
    malat_fprintf(['\\expandafter\\def\\csname matlab-%s\\endcsname{%',d,'}\n'],s,v);
  else
    fprintf(1,'%s = %s\n',s,num2str(v));
    malat_fprintf('\\expandafter\\def\\csname matlab-%s\\endcsname{%s}\n',s,num2str(v));
  end
else
  fprintf(1,'%s = %s\n',s,v);
  malat_fprintf('\\expandafter\\def\\csname matlab-%s\\endcsname{%s}\n',s,v);
end

  function malat_fprintf(varargin)
    if fid_okay
      fprintf(malat_fid,varargin{:});
    end
  end

end
