lastElement :: [a] -> Maybe a
lastElement [] = Nothing
lastElement [x] = Just x
lastElement (_:xs) = lastElement xs
main :: IO ()
main = do
    print $ lastElement [1, 2, 3] 
    print $ lastElement ["a", "b", "c"] 
    print $ lastElement ([] :: [Int])