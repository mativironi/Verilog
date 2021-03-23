//----------------------------------- Operadores -------------------------------------

// Tipo                     Operadores              
// Arithmetic               + − = ∗ / % ∗∗
// Binary Bitwise           ∼ & ∼& | ∼| ^ ∼^ ^∼
// Unary Reduction          & ∼& | ∼| ^ ∼^ + −
// Logical                  ! && || == === != !==
// Rational                 < > <= >=
// Logical Shift            >> <<
// Arithmetic Shift         >>> <<<
// Conditional              ?:
// Concatenation            {}
// Replication              {{}}

//--------------------------------- Ejemplos --------------------------------------------

// Suma
assign c = a + b;

// Condicional
assign out = sel ? a : b;

if ( a ==1’b1)
out = 1 ’b1;
else
out = 1 ’b0;

// Repeticion
A = 2’b01 ;
B = {4{A}} ;    // B = 8’b01010101

// Logical Shift
A = 6’b101111;
B = A >> 2    ; // B = 6 ’b001011

// Arithmetic Shift
A = 6’b101111;
B = A >>> 2   ; // B = 6 ’b111011

A = 6’b101111;
B = A <<< 2   ; // B = 6 ’b111110

// Reduction
A = 4’b1011    ;
assign out = &A; // out = 1 ’b0

//--------------------------------- Observaciones ----------------------------------------

//  " % "   Es el modulo (Resto de la division)
//  " ** "  Es la potencia
//  " === " Se utiliza para comparar con 1, Z, X