//--------------- Ejemplo 1 --- Modulo: top ---> Submodulos: count y shiftreg -------------

//--------------------------------------- Modulo TOP -----------------------------------

module top (
    output [3:0] o_led,     // P. de Salida de 4 bits--MSB Derecha--LSB Izquierda
    output [3:0] o_led_b,
    output [3:0] o_led_g,
    input  [3:0] i_sw,      // P. de Entrada de 4 bits
    input        i_reset,
    input        clock      //Por lo general el reset y el clock son puertos de entrada
    );
    
endmodule // top

//-------------------------------------- Submodulo count ------------------------------

module count (
    output       o_valid,
    input  [2:0] i_sw,
    input        i_reset,
    input        clock
    );
    
endmodule // count

//------------------------------------- Submodulo shiftreg ----------------------------

module shiftreg (
    output [3:0] o_led,
    input        i_valid,
    input        i_reset,
    input        clock
);
    
endmodule // shiftreg


//----------------------------Observaciones----------------------------------------
// A los puertos de entrada de los Submodulos me conviene conservar el mismo nombre que en el Modulo para poder trakear las entradas