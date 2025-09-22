median :: [a] -> Maybe a

median [] = Nothing
median xs = test i xs where
    i = length xs 
    test tamanho ys = Just $ (get (central tamanho) ys)
                    where get pos zs = head $ (drop (pos-1) zs)
                          central tamanho | even tamanho = tamanho `div` 2
                                          | otherwise = 1 + (tamanho `div` 2)