import Data.List
import Data.Char

main :: IO ()
main = return ()

anagram :: String->String->Bool
anagram w1 w2 = sort w1 == sort w2

lowerString str = [ toLower loweredString | loweredString <- str]

assign4 :: String->String->IO [String]
assign4 fileName input=
    do  dictfile<-readFile fileName

        --list is a list of all strings in dictionary
        let list=lines dictfile

        --making the list of dictionary and input lowercase
        let lowlist = [lowerString x|x<-list]
        let lowinput = lowerString input

        --ana is list of anagrams
        --each string in lowlist that is an anagram is stored in ana
        let ana=[ x | x<-lowlist, anagram lowinput x]
        return ana


--to run in command prompt do
--ghci assign4.hs
--assign4 "dictionary.txt" "word"
