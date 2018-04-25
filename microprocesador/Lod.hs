module Lod (lod) where

import Micro
import PosicionDeMemoriaExceptions

lod posicion micro
 | esPosDeMemoriaInvalida micro posicion = microConErrorDePosicion posicion micro
 | otherwise = ejecutarInstr (cargarAConValorDePos posicion) micro

cargarAConValorDePos posicion micro = micro {
	acumuladorA = memoria micro !! (posicion - 1)
}