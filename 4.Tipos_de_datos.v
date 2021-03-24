//------------------------------------ Tipos de Datos ----------------------------------------

// Nets: Son conecciones fisicas entre entre componentes
// |------> Tipo de Nets: wire (representa 1 o multiples bits, pero no permite asignarle "condicionales")
// |------> Funcion: Conecta puertos entre instancias
// |                 Salida de operaciones logicas (Asignacion continua)

// Register: Puedo hacer logica secuencial y combinacional, dependiendo si estoy relacionando mi variable
// |         con el reloj.
// |----------> Tipo de Register: reg
// |----------> Funcion: Inferida como registro o dispositivo de almacenamiento cuando tiene asociado un clock

//-------------------------------- Declaracion de variables -----------------------------------

// Tipo de dato: wire/reg.
// Signed/Unsigned: Definición de variable signada o no signada. Por defecto son no signadas.
// Range:
//   – Define el número de bits o ancho de palabra de la variable.
//   – En el caso de definición de memorias o arreglos la segunda definición determina el número de filas.
// Name: Nombre de la variable

// Ejemplo:
// wire / reg <signed / unsigned> [ <range or width_word >] <name> [ <range or len_memory >];

//---------------------------------- Ejemplo wire ------------------------------------------------

// 1−b it no signado
 wire x1 ;

// 1−b it signado
 wire signed x2 ;

// 8−bits no signado
 wire [7:0] bus1;

// 8−bits signado
 wire signed [7:0] bus2;

// 8−bits by 1024−row no signado
 wire [7:0] array1 [1023:0];

// 8−bits by 1024−row signado
 wire signed [7:0] array2 [1023:0];

 //----------------------------------- Ejemplo reg ----------------------------------------------

// 1−b it no signado
 reg x1_d ;

// 1−b it signado
 reg x2_d ;

// 8−bits no signado
 reg [7 : 0] bus1_d;

// 8−bits signado
 reg signed [7 : 0] bus2_d;

// 8−bits by 1024−row no signado
 reg [7 : 0] memory1 [1023:0];

// 8−bits by 1024−row signado
 reg signed [7 : 0] memory2 [1023:0];

//------------------------------------------------------------------------------------------------