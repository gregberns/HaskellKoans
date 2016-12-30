module GPartialApplication (koans) where

import Test.Hspec
import Test.HUnit (assertBool, assertEqual)
import Koan

__ = error "Replace __ with a valid value"

-- the `add` function takes two parameters and adds the results together
add x y = x + y

koanSimpleApplication = koan "simple standard application" $ do
	add 1 2 == 3

koanPartiallyApplied = koan "simple partial application" $ do
	-- we'll take the `add` function, supply 1 as the first parameter, 
	--    and assign the 'partially applied' function to `addMore`
	-- 'partially applied functions' cant execute until all 
	--    parameters have been satisfied
	let addMore = add 1
	addMore 2 == 3

koanMultipleApplies = koan "multiple partially applied functions" $ do
	let x = add 2
	let y = add 2
	y (x 2) == 6

koans :: Koan
koans = describe "Partial Application" $ do
	koanSimpleApplication
	koanPartiallyApplied
	koanMultipleApplies
