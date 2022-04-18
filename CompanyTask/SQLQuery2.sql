CREATE DATABASE CompanyDB

USE CompanyDB

CREATE TABLE Employees
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20),
	Surname NVARCHAR(20),
	Position NVARCHAR(20),
	Salary MONEY
)

INSERT INTO Employees
VALUES
('Asif', 'Allazov', 'HR', 500),
('Fariz', 'Huseynli', 'Xadimeci', 15),
('Murad', 'Memmedov', 'Parkovsik', 2)


SELECT AVG(Salary) from Employees

SELECT Name, Surname, Salary from Employees WHERE (SELECT AVG(Salary) from Employees)<Salary

SELECT MAX(Salary) from Employees

SELECT MIN(Salary) from Employees