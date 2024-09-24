CREATE TABLE Schools (
    school_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    type VARCHAR(50),
    student_count INT
);

CREATE TABLE Teachers (
    teacher_id INT PRIMARY KEY,
    name VARCHAR(100),
    qualification VARCHAR(100),
    availability BOOLEAN,
    school_id INT,
    FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);

CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(100),
    grade_level INT,
    performance DECIMAL(5, 2),
    school_id INT,
    FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);

CREATE TABLE Resources (
    resource_id INT PRIMARY KEY,
    resource_type VARCHAR(100),
    quantity INT,
    school_id INT,
    FOREIGN KEY (school_id) REFERENCES Schools(school_id)
);

-- Inserting Schools
INSERT INTO Schools (school_id, name, location, type, student_count) VALUES 
(1, 'Rural High School A', 'Village Y', 'High School', 300),
(2, 'Urban School B', 'City X', 'Primary School', 450),
(3, 'Community School C', 'Town Z', 'Secondary School', 500),
(4, 'Rural High School D', 'Village W', 'High School', 320),
(5, 'Urban School E', 'City Y', 'Primary School', 400),
(6, 'Community School F', 'Town X', 'Secondary School', 250),
(7, 'City School Z', 'City Q', 'Primary School', 550);

-- Inserting Teachers
INSERT INTO Teachers (teacher_id, name, qualification, availability, school_id) VALUES
(1, 'John Doe', 'Bachelor of Education', TRUE, 1),
(2, 'Alice Johnson', 'Master of Science in Education', TRUE, 2),
(3, 'Bob Brown', 'Bachelor of Education', FALSE, 3),
(4, 'Emily White', 'Master of Education', TRUE, 4),
(5, 'David Green', 'PhD in Education', TRUE, 5),
(6, 'Liam Jackson', 'Bachelor of Education', TRUE, 50);

-- Inserting  Students
INSERT INTO Students (student_id, name, grade_level, performance, school_id) VALUES
(1, 'Jane Smith', 10, 75.5, 1),
(2, 'Michael Brown', 9, 68.2, 2),
(3, 'Emily Davis', 11, 80.1, 3),
(4, 'Daniel Johnson', 12, 89.4, 4),
(5, 'Sophia Williams', 8, 90.3, 5),
(6, 'Noah Thomas', 11, 85.0, 50);

-- Inserting Resources
INSERT INTO Resources (resource_id, resource_type, quantity, school_id) VALUES
(1, 'Textbooks', 120, 1),
(2, 'Laptops', 50, 2),
(3, 'Desks', 80, 3),
(4, 'Projectors', 10, 4),
(5, 'Whiteboards', 20, 5),
(6, 'Tablets', 70, 50);
