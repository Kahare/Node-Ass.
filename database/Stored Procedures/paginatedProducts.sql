USE product_db;
GO

CREATE PROCEDURE GetPaginatedProducts
    @PageNumber INT,
    @PageSize INT
AS
BEGIN
    DECLARE @Offset INT;
    SET @Offset = (@PageNumber - 1) * @PageSize;

    SELECT Id, Name, Price, Description
    FROM products
    ORDER BY Id 
    OFFSET @Offset ROWS
    FETCH NEXT @PageSize ROWS ONLY;
END;

GO
