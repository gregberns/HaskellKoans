module DTuples (koans) where

import Test.Hspec
import Test.HUnit (assertBool, assertEqual)
import Koan

__ = error "Replace __ with a valid value"

koanTupleFirst = koan "fst tuple" $ do
	let result = fst (5, "hello")
	result == 5

koanTupleSecond = koan "snd tuple" $ do
	let result = snd (5, "hello")
	result == "hello"

-- Excercise
-- Use fst and snd to extract the character 'a'
-- out of ((1,'a'),"foo").
koanTupleExcercise = koan "tuple excercise" $ do
	let x = ((1,'a'),"foo")
	'a' == snd(fst x)
	-- or 
	-- (snd . fst) x
	-- we'll go into this syntax later

koans :: Koan
koans = describe "Tuples" $ do
	koanTupleFirst
	koanTupleSecond
	koanTupleExcercise
