module Demo where

import Data.Char
-- module `Char` should be placed in directory named `Data`
-- import all public `Data.Char` module functions

import Data.Char (toUpper)
-- import Data.Char (toUpper, toLower)
-- import specific functions

import Data.Char hiding (toLower)
-- import all public `Data.Char` module functions except `toLower`

import Data.List

import qualified Data.Set
-- imported functions should be called with full import name, like so
-- Data.Set.union

import qualified Data.Set as Set
-- imported functions should be called with specific name, like so
-- Set.union