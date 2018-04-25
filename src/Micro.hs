module Micro where

{--
por que no modelar al micro con tuplas?
es una opcion valida, pero lo que puede pasar es que, por ejemplo, si el micro fuese
una tupla de 3 ints (lo hago asi para no escribir tanto):

type Micro = (Integer, Integer, Integer)

entonces a las funciones de mi micro podria pasarles tuplas de 3 ints sin que sean un
micro, y no romperia, andaria lo mas bien => --consistencia

ademas:
 * es tedioso hacer los accessors
 * si en algunas funciones quisiese usar pattern matching, y en el futuro cambia la
 estructura de un micro, tendria que cambiar todas esas funciones

lo bueno es que es mas simple manejar tuplas que data

pero para modelar un TAD, prefiero el data.

codigo para probar que f anda tanto con micros, como con fechas, como con posiciones 
en 3d o como con lo que sea:

type Micro = (Integer, Integer, Integer)

first (a, _, _) = a

f:: Micro -> Bool
f micro = first micro > 1

type Fecha = (Integer, Integer, Integer)

algo :: Fecha
algo = (3,2,1)
--}

data Micro = UnMicro {
	memoria :: [Int],
	acumuladorA :: Int,
	acumuladorB :: Int,
	programCounter :: Int,
	mensajeDeError :: String
} deriving Show

xt8088 = UnMicro {
	memoria = [],
	acumuladorA = 0,
	acumuladorB = 0,
	programCounter = 0,
	mensajeDeError = ""
}

intel8086 = UnMicro {
	memoria = [101,111,11,10,110],
	acumuladorA = 81,
	acumuladorB = 9,
	programCounter = 0,
	mensajeDeError = ""
}

ejecutarInstr :: (Micro -> Micro) -> Micro -> Micro
ejecutarInstr instr micro = (instr micro) {
	programCounter = programCounter micro + 1
}

tamanioMemoria = length.memoria

resetB :: Micro -> Micro
resetB micro = micro {
	acumuladorB = 0
}