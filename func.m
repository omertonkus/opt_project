function y = func(x)
    n = length(x);
    product = 1;
    for i = 1:n
        sum = 0;
        for j = 1:5
            sum = sum + j * cos((j + 1) * x(i) + j);
        end
        product = product * sum;
    end
    y = product;
end