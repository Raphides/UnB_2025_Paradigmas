body :: [a] -> Maybe [a]

body [] = Nothing
body (y:ys) | null ys   = Nothing
            | otherwise = Just $ reverse $ tail $ reverse $ ys