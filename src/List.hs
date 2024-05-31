-- exercise: return true or false if a given element is within a list

-- using pattern matching (better solution)    
elemen :: (Eq a) => a -> [a] -> Bool
elemen _ [] = False
elemen e (x:xs) = (e == x) || elemen e xs

-- using head/tail functions
-- elemen x xs
--     | xs == [] = False
--     | x == head xs = True
--     | otherwise = elemen x (tail xs)

-- exercise: removes all duplicates from a list
nub :: (Eq a) => [a] -> [a]
nub [] = []
nub (x:xs)
    | x `elem` xs = nub xs
    | otherwise = x : nub xs


-- exercise: return true/false if a list is in ascending order
isAsc :: [Int] -> Bool
--my solution
-- isAsc (x:xs)
--     | xs == [] = True
--     | x > head(xs) = False
--     | x < head(xs) = isAsc(xs)

-- solution from the teacher
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) = 
    (x <= y) && isAsc (y:xs)


hasPath :: [(Int, Int)] => Int -> Int -> Bool
