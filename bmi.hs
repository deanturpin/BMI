import System.Environment (getArgs)

height = 1.82 :: Double

-- BMI is mass in Kg divided by the square of height in metres
bmi :: Double -> Double
bmi mass = mass / (height * height)

main = do
	args <- getArgs
	print $ bmi (read (head args) :: Double)
	print $ (25 + 18.5) / 2
