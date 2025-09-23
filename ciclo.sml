fun ciclo (x: 'a list, n: int) = if n < 1 then x else ciclo(tl x @ [hd x], n - 1);

ciclo ([1, 2, 3, 4], 2);