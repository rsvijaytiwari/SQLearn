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

SELECT salary FROM employee WHERE salary > 50000;

ALTER TABLE employee ADD COLUMN name VARCHAR(55);
ALTER TABLE employee CHANGE COLUMN department department VARCHAR(55);
ALTER TABLE employee DROP CONSTRAINT department;
ALTER TABLE employee DROP INDEX department;
SHOW INDEX FROM employee WHERE Non_unique = 0;
ALTER TABLE employee DROP INDEX department_2;


INSERT INTO employee (id , salary , department) VALUE (3 , 200000 , 'HR'),
(4 , 250000 , 'IT'),
(5 , 300000 , 'Finance'),
(6 , 307000 , 'IT'),
 (7 , 300000 , 'Finance'),
(8 , 390000 , 'HR'),
(9 , 300500 , 'Finance');

 SELECT count(employee.name) ,employee.department FROM employee GROUP BY(employee.department);
SELECT employee.name FROM employee WHERE name LIKE 'A%';
SELECT * FROM employee ORDER BY salary DESC ;
SELECT (SELECT DISTINCT salary FROM employee ORDER BY salary DESC LIMIT 1 OFFSET 1) AS SecondHighestSalary;
UPDATE employee SET department = 'IT' WHERE id =1;
SELECT e2.name, e1.department FROM employee as e1 INNER JOIN employee as e2;
SELECT name, MIN(department) AS department FROM employee GROUP BY name;

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

CREATE TABLE customer (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL
);

CREATE TABLE orders (
    id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    item VARCHAR(55) NOT NULL,
    CONSTRAINT fk_customer_id FOREIGN KEY (customer_id) REFERENCES customer(id)
);

INSERT INTO customer VALUE(1,'Ishwari'),
    (2, 'Bhakti'),
    (3 , 'Keshav');

INSERT INTO orders VALUE (1 , 1 , 'Milk'),
    (2 , 2 , 'Cookies'),
    (3 , 2 , 'Makhan');

SELECT c.name FROM customer as c LEFT JOIN orders as o ON c.id = o.customer_id WHERE o.customer_id IS NULL;