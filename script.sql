CREATE DATABASE notas_db;

USE notas_db;

CREATE TABLE usuarios(
    id INT NOT NULL AUTO_INCREMENT,
    email VARCHAR(100) UNIQUE NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE notas(
    id INT NOT NULL AUTO_INCREMENT,
    created_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    updated_at TIMESTAMP NOT NULL DEFAULT current_timestamp,
    titulo VARCHAR(100) NOT NULL,
    descripcion TEXT,
    puede_borrarse TINYINT NOT NULL,
    usuario_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(usuario_id) REFERENCES usuarios(id)
);

CREATE TABLE categorias(
    id INT NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    PRIMARY KEY(id)
);

CREATE TABLE notas_categorias(
    id INT NOT NULL AUTO_INCREMENT,
    nota_id INT NOT NULL,
    categoria_id INT NOT NULL,
    PRIMARY KEY(id),
    FOREIGN KEY(nota_id) REFERENCES notas(id),
    FOREIGN KEY(categoria_id) REFERENCES categorias(id)
);

---------------------------------------------------------------------------------------
--Inserts de usuarios------------------------------------------------------------------
---------------------------------------------------------------------------------------

INSERT INTO usuarios VALUES(
    DEFAULT,
    'jorge@gmail.com',
    'jorge'
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    'maria@gmail.com',
    'maria'
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    'pedro@gmail.com',
    'pedro'
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    'lucas@gmail.com',
    'lucas'
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    'marcos@gmail.com',
    'marcos'
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    'juan@gmail.com',
    'juan'
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    'mateo@gmail.com',
    'mateo'
);


INSERT INTO usuarios VALUES(
    DEFAULT,
    'jesus@gmail.com',
    'jesus'
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    'juana@gmail.com',
    'juana'
);

INSERT INTO usuarios VALUES(
    DEFAULT,
    'pepe@gmail.com',
    'pepe'
);


---------------------------------------------------------------------------------------
--Inserts de notas---------------------------------------------------------------------
---------------------------------------------------------------------------------------


INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Edison bulb authentic tilde',
    'Drinking vinegar, leggings synth listicle seitan chillwave tattooed fingerstache godard flexitarian',
    1,
    1
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Sriracha gochujang wayfarers',
    'echo park hashtag tbh etsy synth pabst flannel gentrify. Vape street art keytar 3 wolf moon PBR&B.',
    0,
    2
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Banjo mlkshk aesthetic',
    'Kitsch iceland roof party quinoa 3 wolf moon lumbersexual humblebrag health goth lomo',
    1,
    1
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Cliche narwhal chia',
    'Actually, venmo cloud bread authentic semiotics migas taxidermy raw denim.',
    1,
    7
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Health goth pitchfork',
    'Celiac kale chips.',
    1,
    3
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Air plant leggings',
    'Readymade pinterest pour-over yr occupy pug beard lomo affogato.',
    1,
    5
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Chillwave locavore portland',
    'Woke plaid biodiesel seitan lomo.',
    1,
    10
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Keytar craft beer man',
    'Beard vape palo santo vaporware bespoke chillwave 90s synth.',
    1,
    11
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'DIY tacos organic',
    'La croix four dollar toast polaroid cred godard palo santo banjo slow-carb pinterest photo.',
    0,
    1
);

INSERT INTO notas VALUES(
    DEFAULT,
    DEFAULT,
    DEFAULT,
    'Chambray waistcoat fashion',
    'Axe celiac pabst.',
    0,
    1
);

---------------------------------------------------------------------------------------
--Inserts de categorias=---------------------------------------------------------------
---------------------------------------------------------------------------------------

INSERT INTO categorias VALUES(
    DEFAULT,
    'musica'
);

INSERT INTO categorias VALUES(
    DEFAULT,
    'arte'
);
INSERT INTO categorias VALUES(
    DEFAULT,
    'ciencia'
);
INSERT INTO categorias VALUES(
    DEFAULT,
    'medicina'
);
INSERT INTO categorias VALUES(
    DEFAULT,
    'economia'
);
INSERT INTO categorias VALUES(
    DEFAULT,
    'literatura'
);
INSERT INTO categorias VALUES(
    DEFAULT,
    'ingles'
);
INSERT INTO categorias VALUES(
    DEFAULT,
    'tecnologia'
);
INSERT INTO categorias VALUES(
    DEFAULT,
    'matematica'
);
INSERT INTO categorias VALUES(
    DEFAULT,
    'ingenieria'
);

---------------------------------------------------------------------------------------
--Inserts de notas_categorias----------------------------------------------------------
---------------------------------------------------------------------------------------

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    2,
    1
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    2,
    2
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    2,
    3
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    3,
    1
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    3,
    2
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    7,
    6
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    6,
    1
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    8,
    4
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    5,
    3
);

INSERT INTO notas_categorias VALUES(
    DEFAULT,
    10,
    5
);