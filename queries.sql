1// Listar los productos con stock menor a 5 unidades.

SELECT id_producto, nombre, stock
FROM productos
WHERE stock < 5;

// Calcular ventas totales de un mes específico.

SELECT 
    TO_CHAR(p.fecha, 'YYYY-MM') AS mes,
    SUM(pr.precio * d.cantidad) AS total_ventas
FROM pedidos p
JOIN detalles d ON p.id_pedido = d.id_pedido
JOIN productos pr ON d.id_producto = pr.id_producto
WHERE EXTRACT(MONTH FROM p.fecha) = 1 AND EXTRACT(YEAR FROM p.fecha) = 2025
GROUP BY mes;

// Obtener el cliente con más compras realizadas.
SELECT 
    c.nombre,
    COUNT(p.id_pedido) AS total_pedidos
FROM clientes c
JOIN pedidos p ON c.id_cliente = p.id_cliente
GROUP BY c.nombre
ORDER BY total_pedidos DESC
LIMIT 1;

// Listar los 5 productos más vendidos.
SELECT 
    pr.nombre,
    SUM(d.cantidad) AS total_vendido
FROM productos pr
JOIN detalles d ON pr.id_producto = d.id_producto
GROUP BY pr.nombre
ORDER BY total_vendido DESC
LIMIT 5;


// Consultar ventas realizadas en un rango de fechas de tres Días y un Mes.
SELECT 
    p.id_pedido,
    c.nombre AS cliente,
    pr.nombre AS producto,
    d.cantidad,
    pr.precio,
    (d.cantidad * pr.precio) AS total,
    p.fecha
FROM pedidos p
JOIN clientes c ON p.id_cliente = c.id_cliente
JOIN detalles d ON p.id_pedido = d.id_pedido
JOIN productos pr ON d.id_producto = pr.id_producto
WHERE p.fecha BETWEEN '2025-04-01' AND '2025-04-03';

// Identificar clientes que no han comprado en los últimos 6 meses
SELECT 
    c.id_cliente,
    c.nombre,
    c.telefono
FROM clientes c
LEFT JOIN pedidos p ON c.id_cliente = p.id_cliente
WHERE p.fecha IS NULL OR p.fecha < CURRENT_DATE - INTERVAL '6 months';