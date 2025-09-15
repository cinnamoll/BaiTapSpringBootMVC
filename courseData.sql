CREATE DATABASE IF NOT EXISTS course_tracker;
USE course_tracker;

CREATE TABLE IF NOT EXISTS courses (
	id BIGINT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(255) NOT NULL,
    instructor VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

INSERT INTO courses (course_name, instructor, email) VALUES
('Java Programming', 'John Doe', 'john@example.com'),
('Spring Boot', 'Jane Smith', 'jane@example.com');

GRANT ALL PRIVILEGES ON course_db.* TO 'root'@'localhost';
FLUSH PRIVILEGES;