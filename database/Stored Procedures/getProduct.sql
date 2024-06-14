USE product_db;
GO

CREATE PROCEDURE GetProductById
    @Id INT
AS
BEGIN
    SELECT * FROM products
    WHERE Id = @Id;
END;