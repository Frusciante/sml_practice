fun mergeSort([], sort : ('a * 'a) -> bool) = [] |
    mergeSort([a], sort : ('a * 'a) -> bool) = [a] |
    mergeSort(L : 'a list, sort : ('a * 'a) -> bool) = 
        let
            fun part [] = ([], []) |
                part [a] = ([a], []) |
                part (a::b::resto) =
                    let
                        val (x, y) = part resto 
                    in
                        (a::x, b::y)
                    end;
            
            fun merge ([], y) = y |
                merge (x, []) = x | 
                merge (x::xs, y::ys) = 
                    if sort (x, y) then
                        x::merge (xs, y::ys)
                    else
                        y::merge (x::xs, ys);
            
            val (p1, p2) = part L
        in
            merge (mergeSort (p1, sort), mergeSort (p2, sort))
            
        end;

fun iCrescente (a : int, b : int) = 
    a < b;

fun iDecrescente (a : int, b : int) = 
    a > b;

fun alfabetica (a : string, b : string) = 
    a < b;
    
mergeSort([2, 4, 1, 23, 4], iCrescente);
mergeSort([2, 4, 1, 23, 4], iDecrescente);
mergeSort(["banana", "apple", "orange", "grape"], alfabetica);