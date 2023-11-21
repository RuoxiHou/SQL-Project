CREATE DATABASE sqlproject;
-- Next is from python to insert dataframe into SQL database
-- Now the primary key needs to be set for the relevant tables

USE sqlproject;

ALTER TABLE badges
ADD COLUMN badge_id INT AUTO_INCREMENT PRIMARY KEY;
SELECT * FROM badges;

ALTER TABLE comments
ADD PRIMARY KEY (id);
SELECT * FROM comments LIMIT 10;

ALTER TABLE courses
ADD COLUMN course_id INT AUTO_INCREMENT PRIMARY KEY;
SELECT * FROM courses LIMIT 10;

ALTER TABLE linkedin_jobs
ADD COLUMN job_id INT AUTO_INCREMENT PRIMARY KEY;
SELECT * FROM linkedin_jobs LIMIT 10;

ALTER TABLE locations
ADD PRIMARY KEY (id);
SELECT * FROM locations LIMIT 10;

ALTER TABLE schools
ADD PRIMARY KEY (school_id);
SELECT * FROM schools;

-- Defining foreign keys in the relevant table
ALTER TABLE badges
ADD CONSTRAINT fk_badge_school
FOREIGN KEY (school_id)
REFERENCES schools (school_id);

ALTER TABLE courses
ADD CONSTRAINT fk_course_school
FOREIGN KEY (school_id)
REFERENCES schools (school_id);

ALTER TABLE locations
ADD CONSTRAINT fk_location_school
FOREIGN KEY (school_id)
REFERENCES schools (school_id);
