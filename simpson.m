function result = simpson(f, a, b, n)
    if mod(n, 2) ~= 0
        error('n must be even for Simpson''s rule');
    end
    
    h = (b - a) / n;
    x = a:h:b;
    
    result = f(a) + f(b);
    for i = 2:2:n-1
        result = result + 4 * f(x(i));
    end
    for i = 3:2:n-2
        result = result + 2 * f(x(i));
    end
    
    result = (h / 3) * result;
end