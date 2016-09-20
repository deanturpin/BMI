import System.Environment (getArgs)

height = 1.82 :: Double

-- BMI is mass in Kg divided by the square of height in metres
bmi :: Double -> Double
bmi mass = mass / (height * height)

-- Calculate tyre pressures
-- Pressures proportional to combined mass of the rider and bike
-- Assumes 25mm tyre
bikeMass = 11
pressure riderMass loading = (((riderMass + bikeMass) * 2.2 * 0.978 * loading)) + (-10.187)

-- Read params
-- Calculate BMI
-- Calculate optimum tyre pressures
main = do
    args <- getArgs
    putStr "BMI "
    print $ bmi (read (head args) :: Double)
    putStr "Front pressure "
    print $ pressure (read (head args) :: Double) 0.4
    putStr "Rear pressure "
    print $ pressure (read (head args) :: Double) 0.6
