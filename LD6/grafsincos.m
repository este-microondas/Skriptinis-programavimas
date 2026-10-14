function varargout = grafsincos(v)

s = sin(v);
c = cos(v);

if nargout == 0
    plot(v, s, 'b-', v, c, 'r--');
    legend('sin', 'cos');
    grid on;
    title('Sin ir Cos');
elseif nargout == 1
    varargout{1} = [s; c];
end
end