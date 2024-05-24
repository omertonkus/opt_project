function ypr = gradfunc(x)
    syms x1 x2
    F = (sum(arrayfun(@(j) j * cos((j + 1) * x1 + j), 1:5)) * sum(arrayfun(@(j) j * cos((j + 1) * x2 + j), 1:5)));
    g = gradient(F, [x1, x2]);
    ypr = double(subs(g, [x1, x2], [x(1), x(2)]));
end
