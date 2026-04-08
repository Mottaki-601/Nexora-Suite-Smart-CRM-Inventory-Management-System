
USE R67_AppDb;
GO

CREATE TABLE Customers (
    CustomerId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Address NVARCHAR(150) NOT NULL,
    BusinessStart DATE NOT NULL,
    Phone NVARCHAR(50) NOT NULL,
    CustomerType NVARCHAR(50) NOT NULL,
    Email NVARCHAR(50) NOT NULL,
    CreditLimit MONEY NOT NULL,
    Photo NVARCHAR(MAX) NULL
);

CREATE TABLE DeliveryAddresses (
    DeliveryAddressId INT PRIMARY KEY IDENTITY(1,1),
    CustomerId INT NOT NULL,
    ContactPerson NVARCHAR(100) NOT NULL,
    Phone NVARCHAR(50) NOT NULL,
    Address NVARCHAR(MAX) NOT NULL,
    FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId) ON DELETE CASCADE
);
GO

CREATE PROC spCustomerInsert
    @Name NVARCHAR(100), @Address NVARCHAR(150), @BusinessStart DATE,
    @Phone NVARCHAR(50), @CustomerType NVARCHAR(50), @Email NVARCHAR(50),
    @CreditLimit MONEY, @Photo NVARCHAR(MAX)
AS
BEGIN
    INSERT INTO Customers (Name, Address, BusinessStart, Phone, CustomerType, Email, CreditLimit, Photo)
    VALUES (@Name, @Address, @BusinessStart, @Phone, @CustomerType, @Email, @CreditLimit, @Photo);
END
GO

CREATE PROC spCustomerUpdate
    @CustomerId INT, @Name NVARCHAR(100), @Address NVARCHAR(150), @BusinessStart DATE,
    @Phone NVARCHAR(50), @CustomerType NVARCHAR(50), @Email NVARCHAR(50),
    @CreditLimit MONEY, @Photo NVARCHAR(MAX)
AS
BEGIN
    UPDATE Customers SET 
        Name=@Name, Address=@Address, BusinessStart=@BusinessStart, Phone=@Phone,
        CustomerType=@CustomerType, Email=@Email, CreditLimit=@CreditLimit, 
        Photo = ISNULL(@Photo, Photo)
    WHERE CustomerId = @CustomerId;
END
GO

CREATE PROC spCustomerDelete
    @CustomerId INT
AS
BEGIN
    DELETE FROM Customers WHERE CustomerId = @CustomerId;
END
GO

-----------------------------------------------
USE R67_AppDb;
GO

-- Product Table
CREATE TABLE Products (
    ProductId INT PRIMARY KEY IDENTITY(1,1),
    Name NVARCHAR(100) NOT NULL,
    Category NVARCHAR(50),
    SKU NVARCHAR(20),
    Price MONEY NOT NULL,
    Stock INT DEFAULT 0,
    Description NVARCHAR(500)
);
GO

-- Product Insert Procedure
CREATE PROC spProductInsert
    @Name NVARCHAR(100),
    @Category NVARCHAR(50),
    @SKU NVARCHAR(20),
    @Price MONEY,
    @Stock INT,
    @Description NVARCHAR(500)
AS
BEGIN
    INSERT INTO Products (Name, Category, SKU, Price, Stock, Description)
    VALUES (@Name, @Category, @SKU, @Price, @Stock, @Description);
END
GO



USE R67_AppDb;
GO

CREATE PROC spProductUpdate
    @ProductId INT,
    @Name NVARCHAR(100),
    @Category NVARCHAR(50),
    @SKU NVARCHAR(20),
    @Price MONEY,
    @Stock INT,
    @Description NVARCHAR(500)
AS
BEGIN
    UPDATE Products 
    SET Name=@Name, Category=@Category, SKU=@SKU, Price=@Price, Stock=@Stock, Description=@Description
    WHERE ProductId = @ProductId;
END
GO

CREATE OR ALTER PROC spProductDelete
    @ProductId INT
AS
BEGIN
    DELETE FROM Products WHERE ProductId = @ProductId;
END
GO