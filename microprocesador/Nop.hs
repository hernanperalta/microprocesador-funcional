module Nop where

import Micro

nop :: Micro -> Micro
nop = ejecutarInstr id