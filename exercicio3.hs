main :: IO ()
main = do
    putStrLn "numero: "
    nInput <- getLine
    let n = read nInput :: Int

    if n <= 0
        then putStrLn "precisa ser numero int positivo"
        else do
            let oddNumbers = take n [1, 3 ..]
            putStrLn ( "os numeros impares sao: " ++ show oddNumbers)
