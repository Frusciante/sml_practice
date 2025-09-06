fun menores (i : int, []) = [] | 
    menores (i : int, first::rest : int list) = 
        if first < i then
            first::menores (i, rest)
        else
            menores (i, rest);
            
val test1 = menores(5, [1, 3, 4, 6, 7, 8]);