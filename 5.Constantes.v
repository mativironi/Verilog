//---------------------------------- Constantes ------------------------------------------

// Una constante en Verilog puede ser de cualquier tamaño.
// Se puede escribir en formato decimal (d), binario (b), hexadecimal (h). Por defecto es Decimal

//---------------------------------- Formato ----------------------------------------

// <width>'<type><value>:

// Donde:
//      – Width: Tamaño de la constante (bits).
//      – Type: Tipo de formato.
//      – Value: Valor representado.

//-------------------------------------- Ejemplo -----------------------------------------

//Entero    Almacenado como                             Descripción
1           0000_0000_0000_0000_0000_0000_0000_0001     32 bits Entero
8’hAA       1010_1010                                   8 bits Hexadecimal
6’b10_0011  10_0011                                     6 bits Binario
4’o17       1111                                        4 bits Octal
’hFF        0000_0000_0000_0000_0000_0000_1111_1111     32 bits Hexadecimal
6’hCA       00_1010                                     Valor truncado (2 bit MSB)
6’hA        00_1010                                     Rellena con ceros (2 bits MSB)