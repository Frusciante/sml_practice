fun eval rl x = #2(foldl (fn (n, (i, acc)) => (i + 1.0, acc + n * (Math.pow(x, i)))) (0.0, 0.0) rl);

eval [1.0, 5.0, 3.0] 2.0;