-- 1. Crear base de datos llamada blog.
CREATE DATABASE blog_db;

-- 2. Crear las tablas indicadas de acuerdo al modelo de datos.

CREATE TABLE usuarios (id INT PRIMARY KEY, email VARCHAR(50));

CREATE TABLE post (id INT PRIMARY KEY, usuarios_id_fk INT NOT NULL, titulo VARCHAR(100), fecha DATE, FOREIGN KEY (usuarios_id_fk) REFERENCES usuarios(id));

CREATE TABLE comentarios (id INT PRIMARY KEY, post_id_fk INT NOT NULL, usuarios_id_fk INT NOT NULL, texto VARCHAR(250), fecha DATE, 
FOREIGN KEY (post_id_fk) REFERENCES post(id), FOREIGN KEY (usuarios_id_fk) REFERENCES usuarios(id));

-- 3. Insertar los siguientes registros

\COPY usuarios FROM 'C:\Users\Guillermo\3D Objects\Full Stack Javascritpt\M5\desafio-crando-blog\usuarios.csv' csv header;
\COPY post FROM 'C:\Users\Guillermo\3D Objects\Full Stack Javascritpt\M5\desafio-crando-blog\post.csv' csv header;
\COPY comentarios FROM 'C:\Users\Guillermo\3D Objects\Full Stack Javascritpt\M5\desafio-crando-blog\comentarios.csv' csv header;




-- 4. Seleccionar el correo, id y título de todos los post publicados por el usuario 5.

-- 5. Listar el correo, id y el detalle de todos los comentarios que no hayan sido realizados
-- por el usuario con email usuario06@hotmail.com.

-- 6. Listar los usuarios que no han publicado ningún post.

-- 7. Listar todos los post con sus comentarios (incluyendo aquellos que no poseen
-- comentarios).

-- 8. Listar todos los usuarios que hayan publicado un post en Junio













