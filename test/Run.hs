import Test.Hspec
import Test.HUnit (assertBool, assertEqual)

import Test.Hspec.Runner (hspecWith , defaultConfig, Config(..), configFilterPredicate)

import ABasicFunctions
import BStrings
import DTuples
import ELists
import FListFunctions
import GPartialApplication
import HPatternMatching

main :: IO ()
main = do
  hspecWith (defaultConfig { configFastFail = True }) $ do
    ABasicFunctions.koans
    BStrings.koans
    DTuples.koans
    ELists.koans
    FListFunctions.koans
    GPartialApplication.koans
    HPatternMatching.koans
  return ()
