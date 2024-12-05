use Storytel
go

-- Trigger: Update subscription status
CREATE TRIGGER UpdateSubscriptionStatus
ON Subscriptions
AFTER INSERT, UPDATE
AS
BEGIN
    UPDATE s
    SET is_active = CASE WHEN s.end_date >= GETDATE() THEN 1 ELSE 0 END
    FROM Subscriptions s
    INNER JOIN inserted i ON s.subscription_id = i.subscription_id;
END
GO