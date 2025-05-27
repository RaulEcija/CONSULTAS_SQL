-- Dinero total generado por la empresa
select SUM("customer_id") as "Total_activo_generado" -- Tengo en cuenta que la suma de la columna customer_id de la tabla clientes es el total generado en dinero para la empresa
from "customer";

