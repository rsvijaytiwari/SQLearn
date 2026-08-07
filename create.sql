CREATE TABLE employees
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    name        VARCHAR(55) NOT NULL,
    department  VARCHAR(55) NOT NULL,
    salary      FLOAT       NOT NULL,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

ALTER table employees ADD email VARCHAR(55) UNIQUE;
ALTER table employees ADD mobile_number VARCHAR(55) UNIQUE NULL ;

SELECT *
FROM employees;

INSERT INTO employees
VALUES (1, 'Bhakti', 'Software Engineer', '85000', NOW(), NOW());

INSERT INTO employees (name, department, salary)
VALUES ('Shrji', 'Kripa', '0');

CREATE TABLE customers (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(55) NOT NULL ,
    last_name VARCHAR(55) NOT NULL ,
    modified_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    created_at  TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL ,
    item VARCHAR(55) NOT NULL,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE employee (
    id INT PRIMARY KEY AUTO_INCREMENT,
    salary DECIMAL (10,2) DEFAULT 0 CHECK ( salary > 0 )

);

INSERT INTO employee VALUE (2 , 150000);

SELECT * FROM employee;


CREATE TABLE teacher (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(55) DEFAULT 'Bhakti'
);

CREATE TABLE student (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(55) NOT NULL,
    teacher_id INT,
    CONSTRAINT fk_teacher_id FOREIGN KEY (teacher_id) REFERENCES teacher(id) ON DELETE CASCADE ON UPDATE CASCADE
);

INSERT INTO teacher VALUE (1 , 'Vijay'),
(2 , 'Ishwari');

INSERT INTO student VALUE (1 , 'Vijay' , 1),
(2 , 'Radhe' , 2);

SELECT * FROM teacher JOIN student s on teacher.id = s.teacher_id;

UPDATE teacher set id = 5 WHERE id = 1;

DELETE FROM teacher WHERE id = 5;

CREATE TABLE teacher2 (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(55)
)AS SELECT id , name FROM teacher;

SELECT * FROM teacher2;

