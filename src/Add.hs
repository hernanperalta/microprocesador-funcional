module Add (add) where

import Micro

add :: Micro -> Micro
add = ejecutarInstr (resetB.sumarAConB)

sumarAConB :: Micro -> Micro
sumarAConB micro = micro {
 acumuladorA = acumuladorA micro + acumuladorB micro
}