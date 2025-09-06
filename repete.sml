fun repete ([]) = [] | 
    repete (first::rest : ''a list) =
        if length rest = 0
            then []
        else 
            if first = hd rest
                then first::repete(rest)
            else
                repete(rest);

repete([1, 1, 2, 2, 3, 4, 5, 6, 6]);