import System.Environment (getArgs)

height = 1.82
bmi weight = div weight (height * height)

main = do
	putStrLn "BMI calc"
	args <- getArgs
	putStrLn $ args!!0
	putStrLn $ (bmi 75.7 1.82)
	-- print $ read $ args!!1 :: Float
	-- print $ bmi $ read args!!0 :: Float
