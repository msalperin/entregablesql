
CREATE DATABASE IF NOT EXISTS `EntregableDB_Mariano`;
USE `EntregableDB_Mariano`;

CREATE TABLE `Usuarios` (
   `id_usuario` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id_usuario`)
);

CREATE TABLE `Notas` (
   `id_notas` INT NOT NULL AUTO_INCREMENT,
   `titulo_nota` VARCHAR(100) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha_ultima_modificacion` DATE NOT NULL,
   `descripcion_nota` VARCHAR(255) NOT NULL,
   `destruccion` TINYINT NOT NULL,
   `id_usuario_nota` INT NOT NULL,
   PRIMARY KEY (`id_notas`)
);

CREATE TABLE `Caterogia` (
   `id_categorias` INT NOT NULL,
   `categoria` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id_categorias`)
);

CREATE TABLE `Notas_Categoria` (
   `id_notas_categoria` INT NOT NULL,
   `notas_id` INT NOT NULL,
   `categoria_id` INT NOT NULL,
   PRIMARY KEY (`id_notas_categoria`)
);


ALTER TABLE `Notas` ADD CONSTRAINT `FK_6c6848d1-5a5c-438f-8103-c40136d5560e` FOREIGN KEY (`id_usuario_nota`) REFERENCES `Usuarios`(`id_usuario`)  ;

ALTER TABLE `Notas_Categoria` ADD CONSTRAINT `FK_99f5383a-0fa2-4951-a552-1f323110f3e4` FOREIGN KEY (`notas_id`) REFERENCES `Notas`(`id_notas`)  ;

ALTER TABLE `Notas_Categoria` ADD CONSTRAINT `FK_0a370624-36f5-41aa-907d-5bd47a1a56b3` FOREIGN KEY (`categoria_id`) REFERENCES `Caterogia`(`id_categorias`)  ;

insert into entregabledb_mariano.usuarios (id_usuario, nombre, email) values
(1, "Mariano Salperin", "msalperin@hotmail.com"), (2, "Lucia Roma", "lroma@hotmail.com")
insert into entregabledb_mariano.usuarios (id_usuario, nombre, email) values
(3, "Jose Lopez", "Jose@hotmail.com"), (4, "Jose Perez", "Jose@hotmail.com"), (5, "Jose Gimenez", "Jose@hotmail.com"), (6, "Jose Gonzales", "Jose@hotmail.com"), (7, "Miguel Lopez", "Jose@hotmail.com"),(8, "Jose Jose", "Jose@hotmail.com"), (9, "Gonza Gonzales", "Jose@hotmail.com")

insert into entregabledb_mariano.caterogia (id_categorias, categoria) values
(1, "Supermercado"), (2, "Entrenamiento"), (3, "Finanzas"), (4, "Deporte"), (5, "Recordatorio"), (6, "Notas"), (7, "Cumpleaños"), (8, "Musica"), (9, "Hogar")

insert into entregabledb_mariano.notas (id_notas, titulo_nota,fecha_creacion,fecha_ultima_modificacion,descripcion_nota,destruccion,id_usuario_nota) values
(1,"Nota del super",now(),now(),"ir al super tomate", 1, 3)
insert into entregabledb_mariano.notas (id_notas, titulo_nota,fecha_creacion,fecha_ultima_modificacion,descripcion_nota,destruccion,id_usuario_nota) values
(2,"Nota de deporte",now(),now(),"hace deporte", 2, 4), (3,"Nota de crypto",now(),now(),"invertir en binance", 5, 6),(4,"Nota de finanza",now(),now(),"invertir en doge", 3, 4), (5,"Nota de casas",now(),now(),"arreglar baño", 5, 9), (6,"Nota de recordatorio",now(),now(),"acordarse la vela", 4, 3), (7,"Nota de estudio",now(),now(),"estudiar node", 8, 7)