
run("setup.m");
min_point = find_min();
min_val = f(min_point);
fprintf("f obtains its minimum value %f at [%f, %f]", min_val, min_point(1), min_point(2));