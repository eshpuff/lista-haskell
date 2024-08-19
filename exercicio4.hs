main :: IO ()
main = do
    putStrLn "temperatura em farenheit: "
    fInput <- getLine
    let f = read fInput :: Double
    let c = (f - 32) * 5 / 9

    putStrLn ("temperatura em celsius: " ++ show c)
