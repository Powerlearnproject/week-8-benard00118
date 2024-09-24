INSERT INTO Schools (school_id, name, location, type, student_count) 
VALUES (101, 'Green Valley School', 'Village X', 'High School', 350);

-- Get all schools
SELECT * FROM Schools;

-- Get all schools in 'Village X'
SELECT * FROM Schools WHERE location = 'Village X';


-- Update student count for school_id 101
UPDATE Schools
SET student_count = 400
WHERE school_id = 101;


-- Delete the school with school_id 101
DELETE FROM Schools
WHERE school_id = 101;


INSERT INTO Teachers (teacher_id, name, qualification, availability, school_id) 
VALUES (101, 'Samuel Lee', 'Master of Education', TRUE, 50);

-- Get all teachers
SELECT * FROM Teachers;

-- Get all available teachers
SELECT * FROM Teachers WHERE availability = TRUE;


-- Update qualification for teacher_id 101
UPDATE Teachers
SET qualification = 'PhD in Education'
WHERE teacher_id = 101;


-- Delete the teacher with teacher_id 101
DELETE FROM Teachers
WHERE teacher_id = 101;


INSERT INTO Students (student_id, name, grade_level, performance, school_id) 
VALUES (101, 'Isabella Clark', 10, 85.6, 1);


-- Get all students
SELECT * FROM Students;

-- Get all students in school_id 1
SELECT * FROM Students WHERE school_id = 1;


-- Update performance for student_id 101
UPDATE Students
SET performance = 90.5
WHERE student_id = 101;


-- Delete the student with student_id 101
DELETE FROM Students
WHERE student_id = 101;

INSERT INTO Resources (resource_id, resource_type, quantity, school_id) 
VALUES (101, 'Smartboards', 10, 3);


-- Get all resources
SELECT * FROM Resources;

-- Get all 'Textbooks' resources
SELECT * FROM Resources WHERE resource_type = 'Textbooks';


-- Update quantity for resource_id 101
UPDATE Resources
SET quantity = 15
WHERE resource_id = 101;

-- Delete the resource with resource_id 101
DELETE FROM Resources
WHERE resource_id = 101;
