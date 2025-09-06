fun estaIncluso (_, []) = false |
    estaIncluso (val : 'a, first::li : 'a list) =
        val = first orelse estaIncluso (val, li);

estaIncluso (1, [1, 2, 3]);