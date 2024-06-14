USE product_db;
GO

CREATE OR ALTER PROCEDURE FilterProductsByPriceAndName
    @MinPrice VARCHAR(10),        
    @MaxPrice VARCHAR(10),        
    @NamePattern VARCHAR(255) = NULL 
AS
BEGIN
    SELECT Name
    FROM products
    WHERE Price BETWEEN @MinPrice AND @MaxPrice
      AND (@NamePattern IS NULL OR Name LIKE '%' + @NamePattern + '%')
    ORDER BY Price;
END;

GO
