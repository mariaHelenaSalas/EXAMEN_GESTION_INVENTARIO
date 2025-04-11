INSERT INTO clientes (nombre, correo, telefono) VALUES

('Maria Salas', 'maria@gmail.com', '3001112233'),
('Laura Torres', 'laura@gmail.com', '3014445566'),
('Carlos Ruiz', 'carlos@gmail.com', '3027778899');
('Maria Helena Salas', 'maria@gmail.com', 325135600),
('Osman Ortiz', 'Osman@gmail.com', 354654653),
('Luis', 'luis@hotmail.com', 31265565),
('Oneida', 'one@yahoo.com', 35464653),
('Karen', 'karen@gmail.com', .3546465435);



INSERT INTO proveedores (nombre) VALUES
('TecnoDistriMayito'),
('Suministros S'),
('ElectMantenimiento');



INSERT INTO categorias (nombre) VALUES
('Periféricos'),
('Componentes'),
('Equipos'),
('Accesorios'),
('Redes');


INSERT INTO productos (nombre, precio, stock, id_proveedor, id_categoria) VALUES
('Mouse grande', 80000, 10, 1, 1),
('Teclado negro', 120000, 3, 2, 1),
('Monitor"', 750000, 7, 1, 1),
('Memoria ', 160000, 5, 3, 2),
('Laptop ', 2800000, 2, 2, 3),
('Cable de conexion', 25000, 20, 1, 4),
('Disco', 320000, 4, 3, 2),
('cargador sansung', 50000, 6, 2, 4),
('Audífonos ', 85000, 12, 1, 4),
('Mousepad ', 35000, 8, 3, 4),
('Tablet digital', 1500000, 1, 2, 3),
('Cámara ', 130000, 0, 1, 1),
('Impresora HP', 490000, 3, 2, 3),
('Router', 98000, 9, 3, 5),
('silla', 65000, 2, 1, 1);


INSERT INTO pedidos (id_cliente, fecha) VALUES
(1, '2025-04-01'),
(2, '2025-04-02'),
(3, '2025-04-02'),
(1, '2025-04-03'),
(4, '2025-04-05'),
(5, '2025-03-15'),
(2, '2025-02-01'),
(3, '2025-01-10');


INSERT INTO detalles (id_pedido, id_producto, cantidad) VALUES

(1, 1, 2),
(1, 2, 1),
(2, 3, 1),
(2, 5, 1),
(3, 1, 1),
(4, 1, 1),
(4, 4, 2),
(5, 7, 2),
(6, 8, 1),
(7, 9, 1),
(7, 10, 1),
(8, 10, 1),
(3, 11, 1),
(1, 12, 1),
(5, 13, 1),
(6, 14, 1);
