SELECT e.*, ed.Address 
FROM myjoinsdb.employees as e
JOIN myjoinsdb.employee_details as ed ON e.Id = ed.employee_id;
--
--
SELECT e.*, ed.BirthDate, ed.Marital_Status
FROM myjoinsdb.employees as e
JOIN myjoinsdb.employee_details as ed ON e.Id = ed.employee_id
WHERE ed.Marital_Status = 'Неодружений';
--
--
SELECT e.*, ed.BirthDate,  eps.begin_date, eps.end_date
FROM myjoinsdb.employees as e
JOIN myjoinsdb.employees_positions_salaries as eps ON eps.Employee_id = e.Id
JOIN myjoinsdb.positions as p ON p.Id = eps.Position_id
JOIN myjoinsdb.employee_details ed on ed.employee_id = e.Id
WHERE p.Name = 'Manager'
  AND eps.end_date IS NULL