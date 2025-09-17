fun myimplode cl = foldl(fn(c, acc) => acc ^ str(c)) "" cl;

myimplode [#"1", #"2"];