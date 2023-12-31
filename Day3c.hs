data Vehicle = Car String Int | Bike String Int deriving Show
findVehicle :: Int -> [Vehicle] -> Maybe (String, Int)
findVehicle index vehicles
    | index < 0 || index >= length vehicles = Nothing  
    | otherwise = case vehicles !! index of
                    Car make year -> Just (make, year)
                    Bike make year -> Just (make, year)

main :: IO ()
main = do
    let vehicles = [Car "Toyota" 2010, Bike "Honda" 2022, Car "Ford" 2015]
        index = 1
        result = findVehicle index vehicles
    case result of
        Just (make, year) -> putStrLn $ "Vehicle at index " ++ show index ++ ": Make = " ++ make ++ ", Year = " ++ show year
        Nothing -> putStrLn $ "Index " ++ show index ++ " is out of bounds."