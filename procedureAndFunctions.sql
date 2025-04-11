// Un procedimiento almacenado para registrar una venta.

CREATE OR REPLACE FUNCTION registrar_venta(p_id_cliente INT, p_id_producto INT, p_cantidad INT)
RETURNS VOID AS $$
DECLARE
    v_stock INT;
    v_id_pedido INT;
BEGIN
   
    IF NOT EXISTS (SELECT 1 FROM clientes WHERE id_cliente = p_id_cliente) THEN
        RAISE EXCEPTION 'el cliente con ID % no existe.', p_id_cliente;
    END IF;

 // Validar que el cliente exista.

    IF NOT EXISTS (SELECT 1 FROM productos WHERE id_producto = p_id_producto) THEN
        RAISE EXCEPTION 'el producto con ID % no existe.', p_id_producto;
    END IF;


// Validar que el producto tenga suficiente stock.

    SELECT stock INTO v_stock FROM productos WHERE id_producto = p_id_producto;
    IF v_stock < p_cantidad THEN
        RAISE EXCEPTION 'No hay suficiente stock para el producto con ID %.', p_id_producto;
    END IF;




