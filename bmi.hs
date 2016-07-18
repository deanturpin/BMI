import System.Environment (getArgs)
import System.IO

main = do
	args <- getArgs
	file <- openFile (head args) ReadMode
	text <- hGetContents file
	print text
