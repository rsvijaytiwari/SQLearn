# SQL Practice Questions

A collection of SQL practice questions organized by **CRUD operation** and **difficulty level**.

---

## 📘 CREATE

### Easy
1. Create a table `employees` with columns: id (PK), name, department, salary.
2. Insert a single new employee record into the `employees` table.
3. Create a table `students` with a UNIQUE constraint on the email column.

### Medium
4. Create a table `orders` with a foreign key referencing `customers(id)`.
5. Insert multiple rows into `employees` in a single `INSERT` statement.
6. Create a table with a composite primary key (e.g., `order_items(order_id, product_id)`).
7. Insert data into `orders` using values selected from another table (`INSERT INTO ... SELECT`).

### Hard
8. Create a table with a `CHECK` constraint (e.g., salary > 0) and a `DEFAULT` value on a column.
9. Create a table with `ON DELETE CASCADE` and `ON UPDATE CASCADE` foreign key behavior.
10. Write a query to create a new table as a copy of an existing table's structure and data (`CREATE TABLE ... AS SELECT`), including only rows matching a condition.

---

## 📗 READ

### Easy
11. Select all columns from `employees`.
12. Select employees with salary greater than 50,000.
13. Get the count of employees in each department (`GROUP BY`).
14. Find employees whose name starts with 'A' (`LIKE`).
15. Sort employees by salary in descending order.

### Medium
16. Find the second-highest salary in the `employees` table.
17. Get employees along with their department name using an `INNER JOIN`.
18. List customers who have never placed an order (`LEFT JOIN` + `IS NULL`).
19. Find duplicate email addresses in a `users` table.
20. Get department-wise average salary, but only for departments with more than 3 employees (`HAVING`).
21. Write a query using a subquery to find employees earning more than the average salary.

### Hard
22. Find the Nth highest salary using `DENSE_RANK()` or `LIMIT/OFFSET`.
23. Write a query using a CTE (Common Table Expression) to find employees who earn more than their department's average.
24. Use `ROW_NUMBER()` to fetch the most recent order per customer.
25. Write a recursive CTE to build an org chart / hierarchy (manager → employee tree).
26. Find consecutive days a user was active using window functions (`LAG`/`LEAD`).
27. Write a query to pivot rows into columns (e.g., monthly sales as columns) using conditional aggregation.
28. Find the running total (cumulative sum) of sales per month.

---

## 📙 UPDATE

### Easy
29. Update an employee's salary by ID.
30. Increase salary by 10% for all employees in a specific department.

### Medium
31. Update employee department based on a value from another table (correlated subquery / `UPDATE ... FROM`).
32. Set a column to NULL for rows matching a condition.
33. Update multiple columns in a single statement based on a `CASE` condition (e.g., assign bonus tiers by salary range).

### Hard
34. Update salaries using a join with a `bonus_rules` table, applying different percentage increases per department.
35. Perform an "upsert" — update if a row exists, otherwise insert (`ON CONFLICT` / `MERGE`).
36. Update a running rank or sequence number column for rows based on order value, using window functions in a CTE-based update.

---

## 📕 DELETE

### Easy
37. Delete an employee record by ID.
38. Delete all employees from a specific department.

### Medium
39. Delete duplicate rows, keeping only one copy (using `ROW_NUMBER()` or `MIN(id)`).
40. Delete rows from a table where no matching record exists in a related table (`NOT EXISTS`).

### Hard
41. Delete records older than a certain date, but only if a related child table has no dependent rows.
42. Write a query to safely delete in batches (to avoid locking large tables) using a subquery with `LIMIT`.
43. Delete rows using a `DELETE ... USING` join across two tables (Postgres-style) or a correlated subquery equivalent.

---

## ✅ Progress Tracker

| Category | Easy | Medium | Hard |
|----------|:----:|:------:|:----:|
| CREATE   | ☐☐☐  | ☐☐☐☐   | ☐☐☐  |
| READ     | ☐☐☐☐☐ | ☐☐☐☐☐☐ | ☐☐☐☐☐☐☐ |
| UPDATE   | ☐☐   | ☐☐☐    | ☐☐☐  |
| DELETE   | ☐☐   | ☐☐     | ☐☐☐  |

---

*Want SQL solutions added? Fork this file and add an "Answers" section under each question.*