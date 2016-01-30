import Data.Char (digitToInt)

toDigits :: Int -> [Int]
toDigits = map digitToInt . show

expMod :: Integer -> Integer -> Integer -> Integer
expMod a 0 c = 1
expMod a b c | b `mod` 2 == 0 = x^2 `mod` c
             | otherwise      = x^2 * a `mod` c
	where
		x = expMod a (b `div`2) c
fermat :: Integer -> [Integer] -> Bool
fermat p [] = True
fermat p (a:as) = expMod a (p-1) p == 1 && fermat p as

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial(n-1)

divisors :: Integer -> [Integer]
divisors 1 = [1]
divisors n = [d | d <- [1..(n `div` 2)] , n `mod` d == 0]

primefactors :: Integer -> [Integer]
primefactors 1 = [1]
primefactors n = [d | d <- divisors(n) , divisors(d) == [1]]

primes :: [Integer]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]

pallindrome :: Int -> Bool
pallindrome n | toDigits(n) == reverse(toDigits(n)) = True
			  | otherwise = False

xydigitnumbers :: Int -> Int -> [Int]
xydigitnumbers x y = [a * b | a <- [x..y] , b <- [x..y], pallindrome(a * b)]

sumofsquares :: Int -> Int
sumofsquares 1 = 1
sumofsquares n = n * n + sumofsquares(n-1)

sumatoria :: Int -> Int
sumatoria 1 = 1
sumatoria n = n + sumatoria(n-1)

squareofsum :: Int -> Int
squareofsum 1 = 1
squareofsum n = (sumatoria(n))^2

getPrime :: Int -> Int
getPrime n  = (filter (\x -> (getFactors x) == []) [2..]) !! (n-1)

getFactors :: Int -> [Int]
getFactors x = [ y | y <- [1..introotx], x `mod` y == 0, y /= x, y /= 1]
 where introotx = floor. sqrt $ fromIntegral x
 
pythagoras :: Int -> [Int]
pythagoras n = [a*b*c | a <- [0..n], b <- [a..n], c <- [b..n], a^2 + b^2 == c^2 && a + b + c == n]