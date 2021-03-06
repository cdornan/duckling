-- Copyright (c) 2016-present, Facebook, Inc.
-- All rights reserved.
--
-- This source code is licensed under the BSD-style license found in the
-- LICENSE file in the root directory of this source tree. An additional grant
-- of patent rights can be found in the PATENTS file in the same directory.


{-# LANGUAGE OverloadedStrings #-}

module Duckling.Ordinal.GA.Corpus
  ( corpus ) where

import Prelude
import Data.String

import Duckling.Lang
import Duckling.Ordinal.Types
import Duckling.Resolve
import Duckling.Testing.Types

corpus :: Corpus
corpus = (testContext {lang = GA}, allExamples)

allExamples :: [Example]
allExamples = concat
  [ examples (OrdinalData 6)
             [ "séu"
             ]
  , examples (OrdinalData 1)
             [ "chead"
             , "t-aonu"
             , "t-aonú"
             , "Aonu"
             , "aonú"
             ]
  , examples (OrdinalData 30)
             [ "tríochadú"
             , "triochadú"
             , "tríochadu"
             ]
  , examples (OrdinalData 50)
             [ "caogadu"
             , "caogadú"
             ]
  ]
