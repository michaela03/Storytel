USE Storytel
go

-- Function: Calculate average rating for a book
CREATE FUNCTION CalculateAverageRating
(
    @BookId INT
)
RETURNS DECIMAL(3,2)
AS
BEGIN
    DECLARE @AvgRating DECIMAL(3,2);
    
    SELECT @AvgRating = AVG(CAST(rating AS DECIMAL(3,2)))
    FROM Reviews
    WHERE book_id = @BookId;
    
    RETURN @AvgRating;
END