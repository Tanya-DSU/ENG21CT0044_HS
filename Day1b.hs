reverseList :: [Int] -> [Int]
reverseList [] = []
reverseList (x:xs) = reverseList xs ++ [x]
main :: IO ()
main = do
    let myList = [10 , 15 , 20]
    putStrLn "Original list:"
    print myList
    putStrLn "Reversed list:"
    print $ reverseList myList