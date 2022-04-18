CREATE DATABASE NotebooksDB

USE NotebooksDB

CREATE TABLE Brands
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20)
)

CREATE TABLE Notebooks
(
	Id INT PRIMARY KEY IDENTITY,
	Name NVARCHAR(20),
	Price MONEY,
	BrandId INT FOREIGN KEY REFERENCES Brands(Id)
)

INSERT INTO Brands
VALUES
('Apple'),
('Lenovo'),
('HP')

INSERT INTO Notebooks
VALUES
('Macbook PRO', 2500, 1),
('Thinkpad', 2000, 2),
('Note new', 1500, 3)



SELECT Notebooks.Id, Notebooks.Name, Brands.Name AS 'BrandName' FROM Notebooks
JOIN Brands ON Notebooks.BrandId = Brands.Id

SELECT Notebooks.Id, Notebooks.Name, Brands.Name AS 'BrandName' FROM Notebooks
JOIN Brands ON Notebooks.BrandId = Brands.Id
WHERE Brands.Name Like '%a%'

SELECT * FROM Notebooks
JOIN Brands ON Notebooks.BrandId = BrandId
WHERE (Price BETWEEN 1000 AND 2100) AND Brands.Name='Apple'

SELECT * FROM Brands
WHERE (SELECT COUNT(Id) FROM Notebooks WHERE Notebooks.BrandId=BrandId)>0  
