-- Promedio, Desviación y Varianza del total pagado

select 
   ROUND(AVG("amount"), 2) as "promedio_pagado",
   ROUND(STDDEV("amount"), 2) as "desviación_estandar_pagado",
   ROUND(VARIANCE("amount"), 2) as "dispersión_pagado"
from "payment" ; -- se tiene como referencia la columna 'amount' ya que es el montante pagado

