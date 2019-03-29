CREATE TABLE "Viaje" (
  "id_viaje" serial PRIMARY KEY,
  "id_vuelo" serial REFERENCES Vuelo (id_viaje),
  "id_prog_vuelo" serial REFERENCES Programa_Vuelo (id_prog_vuelo),
  "fecha" date,
  "id_aeropuerto_desp" serial REFERENCES Aeropuerto (id_aeropuerto),
  "id_aeropuerto_ater" serial REFERENCES Aeropuerto (id_aeropuerto)
);

CREATE TABLE "Vuelo" (
  "id_vuelo" serial PRIMARY KEY,
  "modelo_avion" varchar REFERENCES Avion (modelo_avion),
  "plazas_vacias" int
);

CREATE TABLE "Avion" (
  "modelo_avion" varchar PRIMARY KEY,
  "capacidad" int
);

CREATE TABLE "Aeropuerto" (
  "id_aeropuerto" serial PRIMARY KEY,
  "nombre" text,
  "ciudad" text,
  "pais" text,
  "activo" boolean
);

CREATE TABLE "Programa_Vuelo" (
  "id_prog_vuelo" serial PRIMARY KEY,
  "linea_aerea" text,
  "dias_de_semana" date
);

CREATE TABLE "Escala" (
  "id_viaje" serial REFERENCES Viaje (id_viaje),
  "id_aeropuerto" serial REFERENCES Aeropuerto (id_aeropuerto),
  "numero_orden" int
);