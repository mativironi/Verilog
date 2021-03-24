// Registro con reset asincrono activo por bajo
always @ ( posedge clk or negedge rst_n ) begin     //No importa la etapa del reloj en la que este 
    if ( ! rst_n )
    acc_reg <= 16 ’b0;
    else
    acc_reg <= data+acc_reg ;
    end

// Registro con reset asincrono activo por alto    //No importa la etapa del reloj en la que este 
always @ ( posedge clk or posedge rst ) begin
    if ( rst )
    acc_reg <= 16 ’b0;
    else
    acc_reg <= data+acc_reg ;
    end

// Registro con reset sincrono activo por bajo (Depende del reloj)
always @ ( posedge clk ) begin      // Cuando aparesca el flanco de reloj recien ahi se va a ejecutar el reset
    if ( ! rst n)
    acc_reg <= 16 ’b0;
    else
    acc_reg <= data+acc_reg ;
    end

// Registro con reset asincrono activo por alto (Depende del reloj)
always @ ( posedge clk ) begin      // Cuando aparesca el flanco de reloj recien ahi se va a ejecutar el reset
    if ( rst )
    acc_reg <= 16 ’b0;
    else
    acc_reg <= data+acc_reg ;
    end