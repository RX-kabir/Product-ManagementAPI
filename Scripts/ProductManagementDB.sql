-- Get all products
CREATE PROCEDURE GetAllProducts
AS
BEGIN
    SELECT * FROM Products;
END
GO

-- Get product by ID
CREATE PROCEDURE GetProductById
    @Id INT
AS
BEGIN
    SELECT * FROM Products WHERE Id = @Id;
END
GO

-- Insert a new product
CREATE PROCEDURE InsertProduct
    @Name NVARCHAR(100),
    @Quantity INT,
    @Price DECIMAL(18,2)
AS
BEGIN
    INSERT INTO Products (Name, Quantity, Price)
    VALUES (@Name, @Quantity, @Price);
END
GO

-- Update an existing product
CREATE PROCEDURE UpdateProduct
    @Id INT,
    @Name NVARCHAR(100),
    @Quantity INT,
    @Price DECIMAL(18,2)
AS
BEGIN
    UPDATE Products
    SET Name = @Name, Quantity = @Quantity, Price = @Price
    WHERE Id = @Id;
END
GO

-- Delete a product
CREATE PROCEDURE DeleteProduct
    @Id INT
AS
BEGIN
    DELETE FROM Products WHERE Id = @Id;
END
GO
