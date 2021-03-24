//------------------------------------ Declaracion CASE ------------------------------------

//  Compara el valor de entrada con un número de posibles opciones.
//  Existen dos variantes de case (situaciones “don’t care”):
//      – casez: No considera los valores en z.
//      – casex: No considera los valores en x y z.

//------------------------------------ Ejemplo 1 --------------------------------------------

module mux4_1 (
    input   [1 :0] sel ;                        // Entrada 2 bits
    input   [15:0] in1 , in2 , in3 , in4 ;      // Entrada 16 bits 
    output  [15:0] out                          // Salida 16 bits
    );
    reg     [15:0] out ;                        // Variable tipo reg para logica conbinacional

    always @( * ) begin             // Asignacion bloqueante, always me permite usar el condicional case
        case ( sel )
            2’b00 : out = in1 ;
            2’b01 : out = in2 ;
            2’b10 : out = in3 ;
            2’b11 : out = in4 ;
            default : out = 16 ’bx; // No es necesario, ya que colocamos todos los casos posibles
        endcase
    end
endmodule //mux4_1