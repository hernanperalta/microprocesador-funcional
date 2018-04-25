module Swap (swap) where

import Micro

swap :: Micro -> Micro
swap = ejecutarInstr swapAConB

swapAConB :: Micro -> Micro
swapAConB micro = micro {
	acumuladorA = acumuladorB micro,
	acumuladorB = acumuladorA micro
}