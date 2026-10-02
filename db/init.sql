CREATE DATABASE IF NOT EXISTS mydevopsdb;

USE mydevopsdb;

CREATE TABLE IF NOT EXISTS employees (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(100) NOT NULL
);

INSERT INTO employees (name, role)
VALUES
('Mahesh', 'DevOps Engineer'),
('Kedar', 'Developer'),
('Madhuri', 'Tester');
