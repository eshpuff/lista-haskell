main :: IO ()
main = do
    putStrLn "insira um numero: "
    nInput <- getLine
    let n = read nInput :: Int
    
    if n <= 0
        then putStrLn "precisa ser numero inteiro positivo"
        else do

            let result = isPrime n
            putStrLn ("O num " ++ show n ++ " eh primo? " ++ show result)


isPrime :: Int -> Bool
isPrime n
    | n <= 1    = False
    | otherwise = null [ x | x <- [2..isqrt n], n `mod` x == 0 ]

isqrt :: Int -> Int
isqrt = floor . sqrt . fromIntegral
