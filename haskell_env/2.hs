main = interact wc
    where wc input = ((show . length . words) input) ++ "\n"