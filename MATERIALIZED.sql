CREATE TABLE CATEGORY(
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

//Материализованное представление предметов
CREATE MATERIALIZED VIEW cat AS SELECT * FROM CATEGORY;
SELECT * from cat;

//Изменение
INSERT INTO CATEGORY (name) VALUES ('Опции для серверов');
SELECT * from CATEGORY;
SELECT * FROM cat;

//Обновление MVIEW
REFRESH MATERIALIZED VIEW cat;
SELECT * FROM cat;