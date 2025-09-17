fun mymap func li = foldr (fn (x, acc) => (func x)::acc) [] li;

mymap real [1, 2, 3];
map;