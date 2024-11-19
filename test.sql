CREATE DATABASE test;

USE test;

CREATE TABLE test_table(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    parent INT DEFAULT 0,
    PRIMARY KEY(id)
);
-- Cargando Datos
INSERT INTO test_table(id, name, parent) VALUE(1, 'Mascotas', 0);
INSERT INTO test_table(id, name, parent) VALUE(2, 'Gato', 1);
INSERT INTO test_table(id, name, parent) VALUE(3, 'Perro', 1);
INSERT INTO test_table(id, name, parent) VALUE(4, 'Plantas', 0);
INSERT INTO test_table(id, name, parent) VALUE(5, 'Árbol', 4);
INSERT INTO test_table(id, name, parent) VALUE(6, 'Flores', 3);
INSERT INTO test_table(id, name, parent) VALUE(7, 'Micu', 2);
INSERT INTO test_table(id, name, parent) VALUE(8, 'Sasy', 2);
INSERT INTO test_table(id, name, parent) VALUE(9, 'Fido', 3);
INSERT INTO test_table(id, name, parent) VALUE(10, 'Bobby', 3);
INSERT INTO test_table(id, name, parent) VALUE(11, 'Roble', 5);

-- TAREAS
-- 1. Agregar un registro nuevo en la tabla
--  a. Que pertenezca a la familia de Gato
INSERT INTO test_table(name, parent) VALUE('Daisy', 2);

-- b. Que pertenezca a la familia de Fido
INSERT INTO test_table(name, parent) VALUE('Fido jr.', 9);


-- 2. Existe un registro que no coincide con la interpretación esperada, indique cual y por qué.
/*
    El registro que no coincide es el registro No. 6 Nombre: Flores, ya que aunque este podría
    ser un nombre para un perro (dependiendo de los gustos de las personas), lo más adecuado
    es asignarle un idPadre 4 para que pertenezca a la familia de Plantas.
*/

-- 4. Si tiene alguna idea en la que se puede trabajar de forma diferente la estructura o lógica de la tabla, explíquela.

/*
    Tomando en cuenta que los datos se están almacenando en una sola tabla, la idea que planteo es el separar los padres en otra tabla.
    Esto nos permitiría que la tabla contenga solo datos acorde a lo que se está trabajando. Si por ejemplo Fido también es padre
    podría agregarse a la tabla Padre para que sus hijos sean relacionados por medio de dicha tabla.

    Padre:
        - id
        - nombre

    Hijo:
        - id
        - nombre
        - idPadre
*/
