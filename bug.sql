The following SQL query attempts to update a table based on a subquery that might return multiple rows.  This can lead to an error if the UPDATE statement expects a single row for each update.  The specific error message will vary depending on the database system, but it will typically indicate an ambiguous update.

```sql
UPDATE employees
SET salary = (SELECT AVG(salary) FROM employees WHERE department = 'Sales')
WHERE department = 'Marketing';
```