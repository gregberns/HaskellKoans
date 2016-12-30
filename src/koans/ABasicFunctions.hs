module ABasicFunctions (koans) where

import Test.Hspec
import Test.HUnit (assertBool, assertEqual)
import Koan
import Data.List.Split

__ = error "Replace __ with a valid value"

koanTrue = koan "equality" $ do
    -- Replace '__' with a value that makes __ + 2 = 4
    (1 == 1) == True -- 1

koanPlus = koan "(+) function" $ do
    -- Replace '__' with a value that makes __ + 2 = 4
    (2 + 2) == 4 -- 2

koanPlusPrefix = koan "(+) with prefix notation" $ do
    -- (+) is a function that takes two parameters
    --      so it can be prefixed
    ((+) 2 2) == 4 -- 2

koanFloat = koan "float comparison" $ do
    (2 == 2/1) == True -- True

--basic list syntax
koanList = koan "simple list" $ do
    let result = splitOn "\n" "1\n2\n3"
    result == ["1","2","3"]

koanAddToList = koan "add item to list" $ do
    let result = 1 : [2,3,4]
    result == [1,2,3,4]

koanCompose = koan "compose (combine) functions" $ do
    -- this is a very simple version of composition, or the combining of functions 
    let f x = x * 2 
    let g x = x + 1 
    5 == g (f 2)

-- Finished with BasicFunctions!
-- Up next...

koans :: Koan
koans = describe "Basic Functions" $ do
    koanTrue
    koanPlus
    koanPlusPrefix
    koanFloat
    koanList
    koanAddToList
    koanCompose
