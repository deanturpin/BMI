import System.Environment (getArgs)

main = do
	args <- getArgs
	print $ args!!0
	print $ args!!1
