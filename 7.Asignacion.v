//--------------------------------- Asignacion Bloqueante ----------------------------------

module bloqueante( 
    output reg o_data ,
    input i_a , i_b
    ) ;

    reg or0 , and0;                     // variable tipo reg
                                        // Se puede usar assign, para este caso tambien
    always@ ( * ) begin                 // Al usar always, la logica conbinacional me permite usar condicionales
        or0    = i_a | i_b     ;        // Si importa el orden
        and0   = i_a & i_b     ;        // Se coloca el igual =
        o_data = or0 | and0    ;
    end
endmodule //bloqueante

//--------------------------------- Asignacion No bloqueante -------------------------------

module nobloqueante( 
    output reg o_data ,
    input i_a , i_b , clock
    );

    reg or0 , and0;

    always@ (posedge clock) begin       // Logica secuencial (registro), condiciona que se ejecute c/ vez que aparece el flanco ascendente del clock
        or0 <= i_a | i_b ;              // El registro se coloca en Or0
        and0 <= i_a & i_b ;             // El registro se coloca en and0
        o_data <= or0 | and0;           // El registro se coloca en o_data
    end
endmodule //nobloqueante

//--------------------------------------- Observaciones ------------------------------------

// Si es bloqueante, nos interesa el orden en que escribimos, se utiliza para generar logica convinacional
// Si es no bloqueante, no nos interesa el orden en que escribimos, ya que el clock ejecuta todo al mismo tiempo
