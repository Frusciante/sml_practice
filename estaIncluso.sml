fun estaIncluso (_, []) = false |
    estaIncluso (v : ''a, first::li : ''a list) =
        v = first orelse estaIncluso (v, li);

val result1 = estaIncluso (1, [1, 2, 3]); (* result1 will be true *)
val result2 = estaIncluso (4, [1, 2, 3]); (* result2 will be false *)