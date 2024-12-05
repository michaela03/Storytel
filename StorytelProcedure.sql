USE Storytel
GO

-- Stored Procedure: Get user's current books
CREATE PROCEDURE GetUserCurrentBooks
    @UserId INT
AS
BEGIN
    SELECT b.title, b.author_id, bm.position
    FROM Bookmarks bm
    JOIN Books b ON bm.book_id = b.book_id
    WHERE bm.user_id = @UserId
    ORDER BY bm.created_at DESC;
END
GO