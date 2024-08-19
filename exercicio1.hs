main :: IO ()
main = do
    putStrLn "Insira base:"
    xInput <- getLine
    let x = read xInput :: Int

    putStrLn "Insira expoente:"
    nInput <- getLine
    let n = read nInput :: Int

    if n < 0
        then putStrLn "o expoente precisa ser inteiro positivo."
        else do
            let result = pow x n
            putStrLn ("resultado: " ++ show result)

pow :: Int -> Int -> Int
pow _ 0 = 1
pow x n = x * pow x (n - 1)
