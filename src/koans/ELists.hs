module ELists (koans) where

import Test.Hspec
import Test.HUnit (assertBool, assertEqual)
import Koan

__ = error "Replace __ with a valid value"

-- cons
--The colon is called the "cons" operator; 
--the process of adding an element is called "consing."
koanCons1 = koan "cons function 1" $ do
	0:[1,2] == [0,1,2]

koanCons2 = koan "cons function 2" $ do
	5:[1,2,3,4] == [5,1,2,3,4]

koanLength = koan "length of list" $ do
	let result = length [1,2,3,4,10]
	result == 5

koanHead = koan "head of list" $ do
	let result = head [1,2,3,4,10]
	result == 1

koanTail = koan "tail of list" $ do
	let result = tail [1,2,3,4,10]
	result == [2,3,4,10]

koanTailLength = koan "length of tail" $ do
	let result = length (tail [5,6,7])
	result == 2

koanDestructureHead = koan "destructure a list, use the head" $ do
	let list = [1,2,3,4,5]
	-- x is the `head` item, xs is the `tail` item
	let f (x : xs) = x + 1
	(f list) == 2

koanDestructureTail = koan "destructure a list, use the tail" $ do
	let list = [1,2,3,4,5]
	let f (x : xs) = head xs
	(f list) == 2

--Empty lists?

koans :: Koan
koans = describe "Lists" $ do
	koanCons1
	koanCons2
	koanLength
	koanHead
	koanTail
	koanTailLength
	koanDestructureHead
	koanDestructureTail