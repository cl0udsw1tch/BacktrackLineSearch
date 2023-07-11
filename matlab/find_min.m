function min = find_min()
    run("setup.m");
    x1 = [0 ; 0];
    x2 = backtrack_line_search(x1);
    while norm(x1 - x2) > epsilon
        x1 = x2;
        x2 = backtrack_line_search(x2);
    end

    min = x2;

end