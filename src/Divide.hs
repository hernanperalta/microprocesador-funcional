module Divide (divide) where

import Micro
import Exceptions

divide :: Micro -> Micro
divide micro
 | acumuladorB micro == 0 = microConError "division por 0" micro
 | otherwise = ejecutarInstr dividirAPorB micro

dividirAPorB :: Micro -> Micro
dividirAPorB micro = (resetB micro) {
 acumuladorA = acumuladorA micro `div` acumuladorB micro
}