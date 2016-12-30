module BStrings (koans) where

import Test.Hspec
import Test.HUnit (assertBool, assertEqual)
import Koan

__ = error "Replace __ with a valid value"

-- ??
--a String is simply a list of Chars
-- Prelude> 'H':'e':'l':'l':'o':[]
-- "Hello"

koanConcat = koan "concatentate two strings" $ do
	-- a variable can be created with the let keyword
	-- (++) is used to concatenate strings
	let result = "abc" ++ "def"
	result == "abcdef"

koanCharArr = koan "char array" $ do
	-- A string is just a list of characters
	['a', 'b', 'c'] == "abc"

koanCharConcat = koan "char concat" $ do
	-- A string is just a list of characters
	['a'] ++ "bc" == "abc"

koanNonStringToString = koan "convert non-string to string" $ do
	let result = "Five squared is " ++ show (5 * 5)
	result == "Five squared is 25"

koans :: Koan
koans = describe "Strings" $ do
	koanConcat
	koanCharArr
	koanCharConcat
