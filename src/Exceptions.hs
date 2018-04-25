module Exceptions where

import Micro

microConError mensaje micro = micro {
	mensajeDeError = mensaje
}