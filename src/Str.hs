module Str (str) where

import Micro
import PosicionDeMemoriaExceptions

str :: Int -> Int -> Micro -> Micro
str posicion valor micro
 | esPosDeMemoriaInvalida micro posicion = microConErrorDePosicion posicion micro
 | otherwise = ejecutarInstr (microConValorEnPosicion posicion valor) micro

microConValorEnPosicion posicion valor micro = micro {
	memoria = ponerValorEnPosicion posicion valor (memoria micro)
}

ponerValorEnPosicion :: Int -> Int -> [Int] -> [Int]
ponerValorEnPosicion posicion valor memoria = take (posicion - 1) memoria ++ (valor : drop posicion memoria)