

sum' :: (Num a) => [a] -> a
sum' [] = 0
sum' (x:xs) = x + sum' xs

filter' :: (a -> Bool) -> [a] -> [a]
filter' _ [] = []
filter' p (x:xs) = if p x
    then x : filter' p xs
    else filter' p xs

isMultiple x = (x `mod` 3 == 0) || (x `mod` 5 == 0)

sumOfMultiples = sum . (filter' isMultiple)

-- La somme des multiples de 3 ou 9 compris entre 0 et 999
p1 = sumOfMultiples [0..999]

-- L'inverse d'une liste
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x]

-- Fizz Buzz
fb a = if a `mod` 3 == 0 && a `mod` 5 == 0
    then "FizzBuzz"
    else if a `mod` 3 == 0
    then "Fizz"
    else if a `mod` 5 == 0
    then "Buzz"
    else show a

fizzbuzz = map fb [1..]

