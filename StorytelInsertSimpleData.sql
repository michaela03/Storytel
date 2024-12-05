use Storytel
go

-- Insert sample data
INSERT INTO Users (username, email, password_hash, date_joined, country)
VALUES 
('john_doe', 'john@example.com', 'hashed_password', '2023-01-01', 'USA'),
('jane_smith', 'jane@example.com', 'hashed_password', '2023-02-15', 'UK');

INSERT INTO Plans (plan_name, price, duration_days)
VALUES 
('Basic', 9.99, 30),
('Premium', 14.99, 30);

INSERT INTO Subscriptions (user_id, plan_id, start_date, end_date, is_active)
VALUES 
(1, 1, '2023-01-01', '2023-01-31', 1),
(2, 2, '2023-02-15', '2023-03-17', 1);

INSERT INTO Authors (name, biography)
VALUES 
('J.K. Rowling', 'British author, best known for the Harry Potter series.'),
('Stephen King', 'American author of horror, supernatural fiction, suspense, and fantasy novels.');

INSERT INTO Narrators (name, biography)
VALUES 
('Jim Dale', 'English actor, voice artist, and narrator.'),
('Frank Muller', 'American actor and narrator.');

INSERT INTO Publishers (name, country)
VALUES 
('Bloomsbury', 'UK'),
('Scribner', 'USA');

INSERT INTO Categories (name, description)
VALUES 
('Fantasy', 'Books involving magic and supernatural phenomena.'),
('Horror', 'Books intended to frighten, scare, or startle readers.');

INSERT INTO Books (title, author_id, narrator_id, publisher_id, category_id, publication_date, duration_minutes, language, isbn)
VALUES 
('Harry Potter and the Philosopher''s Stone', 1, 1, 1, 1, '1997-06-26', 500, 'English', '9780747532699'),
('The Shining', 2, 2, 2, 2, '1977-01-28', 720, 'English', '9780385121675');

INSERT INTO Reviews (user_id, book_id, rating, comment, review_date)
VALUES 
(1, 1, 5, 'Fantastic book!', '2023-03-01'),
(2, 2, 4, 'Scary but well-written.', '2023-03-15');

INSERT INTO Bookmarks (user_id, book_id, position, created_at)
VALUES 
(1, 1, 150, '2023-03-10 14:30:00'),
(2, 2, 300, '2023-03-20 20:15:00');