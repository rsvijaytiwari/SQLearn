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
)
