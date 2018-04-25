module Exceptions where

import Micro

microConError :: String -> Micro -> Micro
microConError mensaje micro = micro {
 mensajeDeError = mensaje
}