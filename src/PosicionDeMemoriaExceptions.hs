module PosicionDeMemoriaExceptions 
( esPosDeMemoriaInvalida
, microConErrorDePosicion
, microConError
) where

import Micro
import Exceptions

esPosDeMemoriaInvalida :: Micro -> Int -> Bool
esPosDeMemoriaInvalida micro = not.((between 1.tamanioMemoria) micro)

microConErrorDePosicion :: Int -> Micro -> Micro
microConErrorDePosicion posicion micro
 | posicion < 1 = microConError "la posicion no es valida, la memoria empieza en la posicion 1" micro
 | posicion > tamanioMemoria micro = microConError "la posicion excede el tamanio de la memoria" micro
 | otherwise = error "la posicion con la que se llamo a esta funcion es valida"

between :: Int -> Int -> Int -> Bool
between cotaInf cotaSup valor = valor >= cotaInf && valor <= cotaSup