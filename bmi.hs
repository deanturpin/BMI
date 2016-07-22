import System.Environment (getArgs)

height = 1.82 :: Double

-- BMI is mass in Kg divided by the square of height in metres
bmi :: Double -> Double
bmi mass = mass / (height * height)

-- Optimal tyre pressures are proportional to the combined weight of the rider
-- and bike
--  let pressure weight = weight * (55/71) + 48
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
	putStr "Front pressure "
	print $ pressure (read (head args) :: Double) 0.4
	putStr "Rear pressure "
	print $ pressure (read (head args) :: Double) 0.6
