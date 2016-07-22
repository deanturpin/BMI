import System.Environment (getArgs)

height = 1.82 :: Double

-- BMI is mass in Kg divided by the square of height in metres
bmi :: Double -> Double
bmi mass = mass / (height * height)

-- Calculate tyre pressures
-- Pressures proportional to combined mass of the rider and bike
-- Assumes 25mm tyre
bikeMass = 11
pressure riderMass loading = (((riderMass + bikeMass) * loading) * (55 / 71)) + 48

-- Read params
-- Calculate BMI
-- Calculate optimum tyre pressures
main = do
	args <- getArgs
	print $ bmi (read (head args) :: Double)
	putStr "BMI "
	print $ (25 + 18.5) / 2
	putStr "Front mass "
	print $ (bikeMass + (read (head args)) :: Double) * 0.4
	putStr "Front pressure "
	print $ pressure (read (head args) :: Double) 0.4
	putStr "Rear mass "
	print $ (bikeMass + (read (head args) :: Double)) * 0.6
	putStr "Rear pressure "
	print $ pressure (read (head args) :: Double) 0.6
