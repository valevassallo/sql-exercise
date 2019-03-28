CREATE TABLE "ClubMember" (
  "id_membresia" serial PRIMARY KEY,
  "name" text,
  "phone_number" int,
  "address" varchar,
  "id_order" serial REFERENCES Rent (id_order)
);

CREATE TABLE "Rent" (
  "id_order" serial PRIMARY KEY,
  "id_casete" serial REFERENCES Casete (id_casete),
  "date_out" date,
  "date_in" date
);

CREATE TABLE "Casete" (
  "id_casete" serial PRIMARY KEY,
  "format" text,
  "id_movie" serial REFERENCES Movie (id_movie)
);

CREATE TABLE "Movie" (
  "id_movie" serial PRIMARY KEY,
  "title" text,
  "category" text,
  "id_actor" serial REFERENCES Actor (id_actor)
);

CREATE TABLE "Actor" (
  "id_actor" serIal PRIMARY KEY,
  "name" text,
  "real_name" text
);