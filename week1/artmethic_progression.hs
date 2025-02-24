isArithmetic :: [Int] -> Bool
isArithmetic [] = True
isArithmetic [_] = True
isArithmetic (x:y:xs) = helper (y:xs) (y - x)
  where
    helper :: [Int] -> Int -> Bool
    helper [_] _ = True
    helper (x:y:xs) diff = (y - x == diff) && helper (y:xs) diff

main :: IO ()
main = do
  print (isArithmetic [1, 2, 3])     
  print (isArithmetic [2, 4, 6, 8])  
  print (isArithmetic [1, 7, 4])
