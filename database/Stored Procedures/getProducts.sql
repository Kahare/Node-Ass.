USE product_db;
GO

CREATE PROCEDURE GetAllProducts
AS
BEGIN
    SELECT * FROM products;
END;