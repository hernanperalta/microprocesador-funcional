module Lod (lod) where

import Micro
import PosicionDeMemoriaExceptions

lod :: Int -> Micro -> Micro
lod posicion micro
 | esPosDeMemoriaInvalida micro posicion = microConErrorDePosicion posicion micro
 | otherwise = ejecutarInstr (cargarAConValorDePos posicion) micro

cargarAConValorDePos :: Int -> Micro -> Micro
cargarAConValorDePos posicion micro = micro {
 acumuladorA = memoria micro !! (posicion - 1)
}