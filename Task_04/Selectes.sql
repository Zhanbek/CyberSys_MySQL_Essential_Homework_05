SELECT e.*, 
       (
         SELECT ed.Address 
         FROM myjoinsdb.employee_details as ed 
         WHERE ed.employee_id =  e.Id
        ) as address
FROM myjoinsdb.employees as e;
--
--
SELECT (
		SELECT e.Name
        FROM myjoinsdb.employees as e
        WHERE e.Id = ed.employee_id
	   ) as Name,
       (
		SELECT e.Phone
        FROM myjoinsdb.employees as e
        WHERE e.Id = ed.employee_id
	   ) as Phone,       
      ed.BirthDate
FROM myjoinsdb.employee_details as ed 
WHERE ed.Marital_Status = 'Неодружений';
--
--
SELECT (
          SELECT e.Name
          FROM myjoinsdb.employees as e
          WHERE e.Id = eps.Employee_id
        ) as Name,
        (
          SELECT e.Phone
          FROM myjoinsdb.employees as e
          WHERE e.Id = eps.Employee_id
        ) as Phone,        
        (
          SELECT ed.BirthDate
          FROM myjoinsdb.employee_details ed 
          WHERE ed.employee_id = eps.Employee_id
        ) as Birthdate,
       eps.begin_date, 
       eps.end_date
FROM myjoinsdb.employees_positions_salaries as eps 
JOIN myjoinsdb.positions as p ON p.Id = eps.Position_id
WHERE p.Name = 'Manager'
  AND eps.end_date IS NULL