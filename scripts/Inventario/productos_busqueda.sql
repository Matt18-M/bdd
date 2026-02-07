select prod.codigo_producto, prod.nombre as nombre_producto,
udm.codigo_udm as nombre_udm,
udm.descripcion as descripcion_udm,
cast(prod.precio_venta as decimal(6,2)),prod.tiene_iva,
cast(prod.coste as decimal (6,2)),
prod.categorias,cat.nombre as nombre_categoria,
stock
from productos prod, udm udm, categorias cat
where prod.udm = udm.codigo_udm
and prod.categorias = cat.codigo_cat
and upper (prod.nombre) like '%M%'




select prod.codigo_producto, prod.nombre as nombre_producto,
udm.codigo_udm as nombre_udm,
udm.descripcion as descripcion_udm,
prod.precio_venta,prod.tiene_iva,prod.coste,
prod.categorias,cat.nombre as nombre_categoria,
stock
from productos prod, udm udm, categorias cat
where prod.udm = udm.codigo_udm
and prod.categorias = cat.codigo_cat
and upper (prod.nombre) like '%M%'


select * from productos prod, udm udm, categorias cat
where prod.udm = udm.codigo_udm
and prod.categorias = cat.codigo_cat