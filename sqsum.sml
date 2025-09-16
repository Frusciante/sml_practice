fun sqsum li = foldl op+ 0 (map (fn n => n * n) li);

sqsum [1, 2, 3, 4];