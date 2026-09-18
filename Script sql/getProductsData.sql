DROP PROCEDURE IF EXISTS GetProductData;
CREATE PROCEDURE GetProductData
AS
BEGIN
    SET NOCOUNT ON;

    SELECT 
        p.ProductID,
        p.Name,
        p.ProductNumber,
        p.Color
    FROM Production.Product AS p;
END;
GO