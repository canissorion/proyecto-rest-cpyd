CREATE TABLE IF NOT EXISTS users(
    id SERIAL PRIMARY KEY NOT NULL,
    user VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    token VARCHAR NOT NULL
);

CREATE TABLE IF NOT EXISTS stations(
    id SERIAL PRIMARY KEY NOT NULL,
    nombre VARCHAR NOT NULL,
    latitud FLOAT NOT NULL,
    longitud FLOAT NOT NULL,
    altura FLOAT NOT NULL
);

CREATE TABLE IF NOT EXISTS fecha(
    id SERIAL KEY PRIMARY KEY NOT NULL,
    mes VARCHAR NOT NULL,
    dia VARCHAR NOT NULL,
    anio VARCHAR NOT NULL
);


CREATE TABLE IF NOT EXISTS registers(
    id SERIAL PRIMARY KEY NOT NULL,
    temp_maxima FLOAT NOT NULL,
    temp_minima FLOAT NOT NULL,
    precipitacion FLOAT NOT NULL,
    id_station INT,
    id_fecha INT,
    CONSTRAINT fk_station
        FOREIGN KEY(id_station)
            REFERENCES stations(id)
    CONSTRAINT fk_fecha
        FOREIGN KEY(id_fecha)
            REFERENCES fecha(id)
);
