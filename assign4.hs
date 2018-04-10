main :: IO ()
main = return ()

assign4 :: String->IO [String]
assign4 fileName=
    do  dictfile<-readFile fileName
        --inputWord hardcoded for now
        let inputWord = "cat"
        --list is a list of all strings in dictionary
        let list=lines dictfile
        --ana is a list of all anagrams for the inputWord
        let ana=[]
        --first index of list
        let s = [list !! 1]
        --compare the word to each word in dictionary
        --if word is not same length then skip
        --if word is same length then check to see if has matching
        --if word is anagram then add to ana
        return (s)
--to run in command prompt do
--ghci assign4.hs
--assign4("dictionary.txt")
