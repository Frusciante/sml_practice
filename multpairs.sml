fun multpairs (pairs : (int * int) list) = map (fn pair => (#1 pair) * (#2 pair)) pairs;

multpairs[(1, 2), (3, 4)];