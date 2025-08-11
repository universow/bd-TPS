
--Top 5 de lo mas vendido
select top 5 o.cod_prod as cod, p.descripcion, sum(o.cantidad) as cant from ordenes o inner join producto p on 
o.cod_prod= p.codigo
group by o.cod_prod, p.descripcion
order by cant desc

--Top 5 de los clientes mas frecuentes
select top 5 o.cod_cliente, c.nombre, count(o.cod_orden) as cantidad_orden from ORDENES o inner join cliente c on 
c.cod = o.cod_cliente
group by cod_cliente, c.nombre
order by cantidad_orden desc
