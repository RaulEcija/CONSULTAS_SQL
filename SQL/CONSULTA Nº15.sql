-- Dinero total generado por la empresa
select SUM("amount") as "Dinero_total_generado" -- Tengo en cuenta que el activo de la tabla clientes es lo generado en dinero para la empresa
from "payment";



