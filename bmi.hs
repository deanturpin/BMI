import System.Environment (getArgs)

height = 1.82 :: Double

-- BMI is mass in Kg divided by the square of height in metres
bmi :: Double -> Double
bmi mass = mass / (height * height)

main = do
	putStrLn "BMI calc"
	args <- getArgs
	putStrLn $ "mass in " ++ args!!0
	putStrLn $ head args
	print $ bmi 75.7
	-- putStrLn $ bmi 75.7
	-- print $ read $ args!!1 :: Float
	-- print $ bmi $ read args!!0 :: Float
