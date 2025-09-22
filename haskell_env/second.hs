second :: [a] -> Maybe a

second [] = Nothing

second (x:xs) | null xs  = Nothing
              | otherwise = test xs
              where test (y:ys) = Just y