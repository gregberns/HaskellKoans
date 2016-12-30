module HPatternMatching (koans) where

import Test.Hspec
import Test.HUnit (assertBool, assertEqual)
import Koan

__ = error "Replace __ with a valid value"

-- 'sign' takes one parameter, an integer
sign x |  x >  0  =   1
       |  x == 0  =   0
       |  x <  0  =  -1

koanSignHigh = koan "make sign return 1" $ do
	sign 5 == 1	

koanSignLow = koan "make sign return -1" $ do
	sign (5 * (-2)) == -1

-- 'checkList' takes one argument, a list
-- see Lists Destructuring section if `(x:xs)` syntax is unfamiliar
checkList [] = ""
checkList (x : xs) = x

koanCheckHead = koan "check head" $ do
	checkList ["a", "b", "c"] == "a"

koanCheckEmpty = koan "check empty" $ do
	checkList [] == ""

-- comparison takes two 
comparison x y | x < y = "The first is less"
               | x > y = "The second is less"
               | otherwise = "They are equal"

koanCompareLess = koan "compare 1 to 3" $ do
	-- lets try some partial application
	let curried = comparison 1
	curried 3 == "The first is less"

koanCompareMore = koan "compare 5 to 2" $ do
	comparison 5 2 == "The second is less"

koans :: Koan
koans = describe "Pattern Matching" $ do
	koanSignHigh
	koanSignLow
	koanCheckHead
	koanCheckEmpty
	koanCompareLess
	koanCompareMore