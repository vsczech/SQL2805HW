/*
ПРАКТИЧЕСКОЕ ЗАДАНИЕ 1.

Задание 1. Создайте таблицу с мобильными телефонами, используя графический интерфейс. Заполните БД данными
*/


CREATE DATABASE Goods_And_Sales;

USE Goods_And_Sales;

CREATE TABLE Products
(Id INT PRIMARY KEY NOT NULL,
ProductName VARCHAR(30) NOT NULL,
Manufacturer VARCHAR(30) NOT NULL,
ProductCount INT NOT NULL,
Price INT);

INSERT Products(Id, ProductName, Manufacturer, ProductCount, Price)
VALUES
(1, "IPhone X", "Apple", 3, 76000),
(2, "IPhone 8", "Apple", 2, 51000),
(3, "Galaxy S9", "Samsung", 2, 56000),
(4, "Galaxy S8", "Samsung", 1, 41000),
(5, "P20 Pro", "Huawei", 5, 36000);


/*
Задание 2. Выведите название, производителя и цену для товаров, количество которых превышает 2
*/

SELECT ProductName, Manufacturer, Price FROM Goods_And_Sales.Products
WHERE ProductCount > 2;

/*
Задание 3. Выведите весь ассортимент товаров марки “Samsung”
*/

SELECT ProductName FROM Goods_And_Sales.Products
WHERE Manufacturer = "Samsung";

/*
Задание 4. С помощью регулярных выражений найти:
4.1. Товары, в которых есть упоминание "Iphone"
*/

SELECT  ProductName FROM Goods_And_Sales.Products
WHERE ProductName LIKE "%iPhone%";

/*
4.2. "Samsung"
*/

SELECT  ProductName FROM Goods_And_Sales.Products
WHERE Manufacturer LIKE "%Samsung%";

/*
Задание 4. С помощью регулярных выражений найти:
4.3. Товары, в которых есть ЦИФРА "8"
*/

SELECT  ProductName FROM Goods_And_Sales.Products
WHERE ProductName LIKE "%8%";