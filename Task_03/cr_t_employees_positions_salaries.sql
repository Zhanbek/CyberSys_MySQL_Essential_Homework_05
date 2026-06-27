CREATE TABLE employees_positions_salaries (
    Employee_id INT,
    Position_id INT,
    begin_date DATE NOT NULL,
    end_date DATE,
    salary DOUBLE,
    FOREIGN KEY (Employee_id) REFERENCES Employees(Id),
    FOREIGN KEY (Position_id) REFERENCES Positions(Id)
);