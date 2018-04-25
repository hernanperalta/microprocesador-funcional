module Lodv (lodv) where

import Micro

lodv :: Int -> Micro -> Micro
lodv valor = ejecutarInstr (cargarValorEnA valor)

cargarValorEnA :: Int -> Micro -> Micro
cargarValorEnA valor micro = micro {
 acumuladorA = valor
}