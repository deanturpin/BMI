import System.Environment (getArgs)

height = 1.82 :: Double
bmi :: Double -> Double
bmi weight = weight / (height * height)

main = do
	putStrLn "BMI calc"
	args <- getArgs
	putStrLn $ args!!0
	putStrLn $ head args
	print $ bmi 75.7
	-- putStrLn $ bmi 75.7
	-- print $ read $ args!!1 :: Float
	-- print $ bmi $ read args!!0 :: Float
