-- Tạo cơ sở dữ liệu
CREATE DATABASE ShopPhuKienDienThoaiDB
GO
USE ShopPhuKienDienThoaiDB
GO
-- 1. Bảng Users
CREATE TABLE Users (
    UserID INT PRIMARY KEY IDENTITY (1,1),
    FullName NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE,
    PasswordHash NVARCHAR(255),
    Phone NVARCHAR(20),
    Address NVARCHAR(MAX),
	Role NVARCHAR(20) DEFAULT 'Customer',
    CreatedAt DATETIME DEFAULT GETDATE()
)
GO
-- 2. Bảng Categories
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName NVARCHAR(100) NOT NULL,
	Description NVARCHAR(MAX)
)
GO
-- 3. Bảng Products
CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName NVARCHAR(100) NOT NULL,
    Description NVARCHAR(MAX),
    Price DECIMAL(10, 2),
	Quantity INT,
    ImageUrl NVARCHAR(255),
    CategoryID INT FOREIGN KEY REFERENCES Categories(CategoryID),
	CreatedAt DATETIME DEFAULT GETDATE(),
)
GO
-- 4. Bảng ProductImages
CREATE TABLE ProductImages (
    ProductImageID INT PRIMARY KEY IDENTITY(1,1),
    ProductID INT NOT NULL,
    ImageUrl NVARCHAR(255),
    IsMain BIT DEFAULT 0,
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
)
GO
-- 5. Bảng Orders
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    UserID INT,
    OrderDate DATETIME DEFAULT GETDATE(),
	ShipAddress NVARCHAR(MAX),
    TotalAmount DECIMAL(10, 2),
    Status NVARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (UserID) REFERENCES Users(UserID)
)
GO
-- 6. Bảng OrderDetails
CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ProductID INT,
    Quantity INT,
    UnitPrice DECIMAL(10, 2),
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId),
    FOREIGN KEY (ProductId) REFERENCES Products(ProductId)
)
GO
-- 7. Bảng Payments
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT NOT NULL,
    PaymentMethod NVARCHAR(50),
    PaymentDate DATETIME DEFAULT GETDATE(),
    Amount DECIMAL(18, 2), 
    FOREIGN KEY (OrderId) REFERENCES Orders(OrderId)
)




SELECT * FROM Products;
SELECT * FROM Categories;
select*from Orders;
select*from OrderDetails;
select*from Users;
select*from Payments;
select* from ProductImages;



