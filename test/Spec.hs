{-# LANGUAGE DataKinds #-}

import Test.Hspec

import Data.Finite.Bounded

main :: IO ()
main = hspec $ do
  describe "Data.Finite.Bounded" $ do
    it "doesn't wrap `(-)`" $
      0 - 5 `shouldBe` (minBound :: Finite 20)
    it "doesn't wrap `(+)`" $
      18 + 5 `shouldBe` (maxBound :: Finite 20)
    it "doesn't wrap `(*)`" $
      5 * 5 `shouldBe` (maxBound :: Finite 20)
