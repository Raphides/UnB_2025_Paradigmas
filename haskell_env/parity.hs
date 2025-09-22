parity :: Int -> Int
parity 0 = 0
parity 1 = 1
parity a | even a = parity 0
         | otherwise = parity 1