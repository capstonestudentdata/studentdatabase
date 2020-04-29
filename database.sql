CREATE DATABASE college;
USE college;

CREATE TABLE students(
    student_id INT AUTO_INCREMENT, 
    first_name VARCHAR(50),
    last_name VARCHAR(50), 
    major VARCHAR(255), 
    minor VARCHAR(255),
    PRIMARY KEY (student_id));

CREATE TABLE s_semesters(
    term_id VARCHAR(50),
    student_id INT(50), 
    course_1 VARCHAR(50),
    course_2 VARCHAR(50), 
    course_3 VARCHAR(50), 
    course_4 VARCHAR(50),
    course_5 VARCHAR(50),
    PRIMARY KEY (student_id, term_id),   
    FOREIGN KEY (student_id) REFERENCES students(student_id));

CREATE TABLE professors( 
    professor_id INT AUTO_INCREMENT,
    name VARCHAR(50),
    department VARCHAR(50),
    PRIMARY KEY (professor_id));


CREATE TABLE courses( 
    course_code VARCHAR(50),
    name VARCHAR(50),
    professor_id INT(50),
    PRIMARY KEY (course_code),
    FOREIGN KEY (professor_id) REFERENCES professors(professor_id));

CREATE TABLE p_semesters(
    term_id VARCHAR(50),
    professor_id INT(50), 
    course_1 VARCHAR(50),
    course_2 VARCHAR(50),
    course_3 VARCHAR(50),
    PRIMARY KEY (professor_id, term_id),
    FOREIGN KEY (professor_id) REFERENCES professors(professor_id));

CREATE TABLE login( 
   username VARCHAR(50),
   passwords VARCHAR(50),
   student_id INT(50),
   professor_id INT(50),
   PRIMARY KEY (username),	
   FOREIGN KEY (student_id) REFERENCES students(student_id),
   FOREIGN KEY (professor_id) REFERENCES professors(professor_id));
   
   