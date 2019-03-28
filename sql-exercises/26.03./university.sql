CREATE TABLE Students (
    student_id serial PRIMARY KEY,
    name text,
    speciality text
);

CREATE TABLE Courses (
    course_id serial PRIMARY KEY,
    name text
);

CREATE TABLE Professors (
    prof_id serial PRIMARY KEY,
    name text,
    office varchar
);

CREATE TABLE Registration (
  	registration_id serial PRIMARY KEY,
    student_id serial REFERENCES Students (student_id),
    course_id serial REFERENCES Courses (course_id),
    prof_id serial REFERENCES Professors (prof_id),
  	section text
);