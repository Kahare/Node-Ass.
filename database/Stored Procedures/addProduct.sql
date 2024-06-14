USE product_db;
GO

CREATE PROCEDURE AddProduct
    @Name VARCHAR(255),
    @Price DECIMAL(10,2),
    @Description VARCHAR(255)
AS
BEGIN
    INSERT INTO products (Name, Price, Description)
    VALUES (@Name, @Price, @Description);
END;
