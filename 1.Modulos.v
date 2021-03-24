//------------------------------Estructura-----------------------------------------

module moduleName (
    ports
);
    
endmodule

//--------------------------------Ejemplo 1---Full Adder-----------------------------

module fulladder (
    output o_sum,       //puerto de salida suma de A + B
    output o_c,         //puerto de salida bit de carry (para el modulo anterior)
    input i_a,          //puerto de entrada A
    input i_b,          //puerto de entrada B
    input i_c           //puerto de entrada carrier
);

//  assign: variables de asignacion continua que se describen con el tipo de variable wire (cable)
    assign {o_c , o_sum} = i_a + i_b + i_c ;  
//           MSB , LSB
//  Suma de entrada y Concatenacion de salida
endmodule

//---------------------------------Ejemplo 2---Top Level-------------------------------

module top (
    output [3:0] o_led,     // P. de Salida de 4 bits--MSB Derecha--LSB Izquierda
    output [3:0] o_led_b,
    output [3:0] o_led_g,
    input  [3:0] i_sw,
    input        i_reset,
    input        clock      //Por lo general el reset y el clock son puertos de entrada
);
    
endmodule

//-------------------------------Observaciones--------------------------------

// Por defecto los puertos de entradas y salida que no tengan una declaracion adicional, son de tipo wire
// Arranco desde los puertos de salida para facilitar la lectura de codigo (Criterio de diseño)
// La enumeracion para puertos con varios bits arranca de 0
