applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)
double :: Int -> Int
double x = x * 2

main :: IO ()
main = do
    let result = applyTwice double 5
    putStrLn "Applying double twice to 5:"
    print result