//---------------------------------- Instancias -----------------------------
//     Instanciar significa incluir un módulo dentro de otro.
//     La instancia consiste en:
//          – Nombre del módulo (fulladder)
//          – Nombre de la instancia (u_fulladder)
//          – Declaración de puertos

//------------------------ Ejemplo 1 - Llamar a fulladder, 3 veces----------------------

//---- Declaracion de los puertos de entrada y salida internas de mi sumador

module rca (
    output [2:0] o_sum,
    output o_c,
    input [2:0] i_a,
    input [2:0] i_b,
    input i_c,
);
    wire [1:0] carry; // variable wire 2 bits, se utiliza con el carry para conectar los 2 extremos del cable

//-----Instanciacion del modulo fulladder que se encuentra en el ejemplo 1 de 1.Modulos.v

fulladder                                 // Nombre del modulo
    u_fulladder_0 (                       // Nombre de la instancia
                    .o_sum(o_sum[0]),     // Declaracion de puertos, asignacion por nombre 2001
                    .o_c(carry[0]),       // . <puertos del modulo fulladder> (<conecciones internas>)
                    .i_a(i_a[0]),
                    .i_b(i_b[0],
                    .i_c(i_c[0])
    );

fulladder
    u_fulladder_1 (
                    .o_sum(o_sum[1]),
                    .o_c(carry[1]),
                    .i_a(i_a[1]),
                    .i_b(i_b[1],
                    .i_c(i_c[1])
    );

fulladder
    u_fulladder_2 (
                    .o_sum(o_sum[2]),
                    .o_c(carry[2]),
                    .i_a(i_a[2]),
                    .i_b(i_b[2],
                    .i_c(i_c[2])
    );

endmodule

//-------------------------------------- Ejemplo 2 ---------------------------------------

module top (
    output [3:0] o_led,     // P. de Salida de 4 bits--MSB Derecha--LSB Izquierda
    output [3:0] o_led_b,
    output [3:0] o_led_g,
    input  [3:0] i_sw,
    input        i_reset,
    input        clock      //Por lo general el reset y el clock son puertos de entrada
    );

    wire connect_count_to_sr; // wire de 1 bit para i_valid y o_valid

    count
        u_count (
            .o_valid    (connect_count_to_sr),
            .i_sw       (i_sw [2:0]         ),
            .i_reset    (i_reset            ),
            .clock      (clock              ),
    );

    shiftreg
        u_shiftreg (
            .o_led      (                   ), // Falta
            .i_valid    (connect_count_to_sr),
            .i_reset    (i_reset            ),
            .clock      (clock              )
    );

endmodule

//------------------------------------- Observaciones -------------------------------------

// Como las asignaciones son por nombre, no importa el orden en que sean escritas