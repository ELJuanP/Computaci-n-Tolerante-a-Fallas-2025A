
CREATE TABLE IF NOT EXISTS Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT
) ENGINE=InnoDB;

-- Insertar registros en Categorías
INSERT INTO Categorias (nombre, descripcion) VALUES
('Computadoras', 'Equipos de cómputo de escritorio y portátiles'),
('Periféricos', 'Dispositivos complementarios como teclados, ratones y monitores'),
('Componentes', 'Partes internas para ensamblaje o mejora de PCs'),
('Redes', 'Equipos y accesorios para redes de comunicación'),
('Software', 'Programas y aplicaciones para diversos usos');

-- Tabla de Clientes
CREATE TABLE IF NOT EXISTS Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    correo_electronico VARCHAR(255) UNIQUE NOT NULL,
    direccion TEXT,
    telefono VARCHAR(15)
) ENGINE=InnoDB;

-- Insertar registros en Clientes
INSERT INTO Clientes (nombre, correo_electronico, direccion, telefono) VALUES
('Ana Gómez', 'ana.gomez@example.com', 'Av. Vallarta 1234, Guadalajara, Jalisco', '3331234567'),
('Luis Pérez', 'luis.perez@example.com', 'Calle López Cotilla 567, Guadalajara, Jalisco', '3332345678'),
('María Rodríguez', 'maria.rodriguez@example.com', 'Calle Independencia 890, Guadalajara, Jalisco', '3333456789'),
('Carlos Sánchez', 'carlos.sanchez@example.com', 'Calle Colón 234, Guadalajara, Jalisco', '3334567890'),
('Patricia López', 'patricia.lopez@example.com', 'Calle Juárez 345, Guadalajara, Jalisco', '3335678901');

-- Tabla de Productos
CREATE TABLE IF NOT EXISTS Productos (
    id_producto INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT DEFAULT 0,
    id_categoria INT,
    FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria) ON DELETE SET NULL
) ENGINE=InnoDB;

-- Insertar registros en Productos
INSERT INTO Productos (nombre, descripcion, precio, stock, id_categoria) VALUES
('Laptop Dell Inspiron', 'Laptop portátil con procesador Intel i7, 16GB RAM y 512GB SSD', 15000.00, 10, 1),
('Teclado Mecánico RGB', 'Teclado con retroiluminación RGB y teclas mecánicas para gamers', 1200.00, 25, 2),
('Placa Madre ASUS ROG', 'Motherboard para gaming con chipset Z590 y soporte para overclocking', 3500.00, 15, 3),
('Router Wi-Fi 6 TP-Link', 'Router de alta velocidad con tecnología Wi-Fi 6 y seguridad avanzada', 1800.00, 20, 4),
('Licencia Windows 10 Pro', 'Sistema operativo Windows 10 Pro para uso empresarial y profesional', 3000.00, 50, 5);

-- Tabla de Pedidos
CREATE TABLE IF NOT EXISTS Pedidos (
    id_pedido INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    fecha_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    estado ENUM('Pendiente', 'Enviado', 'Entregado') DEFAULT 'Pendiente',
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Insertar registros en Pedidos
INSERT INTO Pedidos (id_cliente, fecha_pedido, estado) VALUES
(1, '2025-04-01 10:30:00', 'Pendiente'),
(2, '2025-04-02 14:45:00', 'Enviado'),
(3, '2025-04-03 09:15:00', 'Entregado'),
(4, '2025-04-04 16:00:00', 'Pendiente'),
(5, '2025-04-05 11:30:00', 'Enviado');

-- Tabla de Detalles del Pedido
CREATE TABLE IF NOT EXISTS Detalles_Pedido (
    id_detalle INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    id_producto INT,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido) ON DELETE CASCADE,
    FOREIGN KEY (id_producto) REFERENCES Productos(id_producto) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Insertar registros en Detalles_Pedido
INSERT INTO Detalles_Pedido (id_pedido, id_producto, cantidad, precio_unitario) VALUES
(1, 1, 1, 15000.00),
(1, 2, 2, 1200.00),
(2, 3, 1, 3500.00),
(2, 4, 1, 1800.00),
(3, 5, 1, 3000.00);

-- Tabla de Facturas
CREATE TABLE IF NOT EXISTS Facturas (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    id_pedido INT,
    fecha_factura DATETIME DEFAULT CURRENT_TIMESTAMP,
    total DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Insertar registros en Facturas
INSERT INTO Facturas (id_pedido, fecha_factura, total) VALUES
(1, '2025-04-01 12:00:00', 17400.00),
(2, '2025-04-02 15:00:00', 5300.00),
(3, '2025-04-03 10:00:00', 3000.00),
(4, '2025-04-04 17:00:00', 3300.00),
(5, '2025-04-05 12:30:00', 4800.00);

-- Tabla de Pagos
CREATE TABLE IF NOT EXISTS Pagos (
    id_pago INT AUTO_INCREMENT PRIMARY KEY,
    id_factura INT,
    fecha_pago DATETIME DEFAULT CURRENT_TIMESTAMP,
    monto DECIMAL(10, 2) NOT NULL,
    metodo_pago ENUM('Tarjeta de crédito', 'PayPal', 'Efectivo') NOT NULL,
    FOREIGN KEY (id_factura) REFERENCES Facturas(id_factura) ON DELETE CASCADE
) ENGINE=InnoDB;

-- Insertar registros en Pagos
INSERT INTO Pagos (id_factura, fecha_pago, monto, metodo_pago) VALUES
(1, '
::contentReference[oaicite:2]{index=2}
 
