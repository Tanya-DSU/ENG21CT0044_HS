class Slicable a where
    slice :: a -> Int -> Int -> Maybe a

instance Slicable String where
    slice str start end
        | start < 0 || end < start || end > length str = Nothing
        | otherwise = Just $ take (end - start) (drop start str)

sliceMyString :: String -> Int -> Int -> Maybe String
sliceMyString value start end = slice value start end
main :: IO ()
main = do
    let inputString = "Hello, World!"
    
    putStrLn $ show $ sliceMyString inputString 0 5  
    putStrLn $ show $ sliceMyString inputString 7 12 
    putStrLn $ show $ sliceMyString inputString 5 0  
    putStrLn $ show $ sliceMyString inputString 0 15