isPalindrome :: String -> Bool
isPalindrome str = str == reverse str
main :: IO ()
main = do
    putStrLn "Enter a string:"
    input <- getLine
    let result = isPalindrome input
    if result
        then putStrLn "The input string is a palindrome."
        else putStrLn "The input string is not a palindrome."