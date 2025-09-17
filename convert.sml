fun convert li = foldr (fn ((a, b), (acc1, acc2)) => (a::acc1, b::acc2)) ([], []) li;

convert [(1, 2), (3, 4), (5, 6)];