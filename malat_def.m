function x = malat_def(s,v,d)

if nargin == 3
  malat_print(s,v,d)
elseif nargin == 2
  malat_print(s,v)
end

if nargout == 1
  if isnumeric(v)
    x = v;
  else
    x = eval(v);
  end
else
  if nargin > 2
    evalstr = sprintf(['%',d],v);
  else
    evalstr = num2str(v);
  end
  evalin('caller',[s,' = ',evalstr,';']);
end

end
