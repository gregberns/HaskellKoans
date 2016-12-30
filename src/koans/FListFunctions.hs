module FListFunctions (koans) where

import Test.Hspec
import Test.HUnit (assertBool, assertEqual)
import Koan
import Data.Char (toUpper, isLower)

__ = error "Replace __ with a valid value"

--List functions 

--map
-- any thing that can be called on 
--   with map is called a 'functor' 
-- Prelude> map Char.toUpper "Hello World"
-- "HELLO WORLD"

koanMapStr = koan "map capitalize chars" $ do
    let result = map toUpper "Hello World"
    result == "HELLO WORLD"

koanMapIntToStr = koan "map int to string" $ do
	-- 'show' turns a non-string to a string
    let result = map show [1,2,3]
    result == ["1","2","3"]


--filter
koanFilter = koan "filter" $ do
	let result = filter isLower "Hello World"
	result == "elloorld"

--foldl or 'fold left'
-- also known as reduce or aggregate
-- the purpose is to combine the list together
--  based on the function supplied.
-- In this case, the (+) function will take the inital
-- value, add the first list value, then add the second list value, etc
koanFoldlInt = koan "foldl int" $ do
	let result = foldl (+) 0 [1,2,3]
	result == 6

-- a fold could also be used on a list of strings of characters
-- the 'string.join' function does this (similar to other languages) 
koanFoldlStr = koan "foldl string" $ do
	let result = foldl (++) "" ["ab", "cd", "ef"]
	result == "abcdef"


koans :: Koan
koans = describe "List Functions" $ do
	koanMapStr
	koanMapIntToStr
	koanFilter
	koanFoldlInt
	koanFoldlStr
