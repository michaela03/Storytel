USE Storytel
GO

-- Insert more users
INSERT INTO Users (username, email, password_hash, date_joined, country)
VALUES 
('alice_wonder', 'alice@example.com', 'hashed_password', '2023-03-01', 'Canada'),
('bob_builder', 'bob@example.com', 'hashed_password', '2023-03-15', 'Australia'),
('charlie_brown', 'charlie@example.com', 'hashed_password', '2023-04-01', 'Germany'),
('diana_prince', 'diana@example.com', 'hashed_password', '2023-04-15', 'France'),
('ethan_hunt', 'ethan@example.com', 'hashed_password', '2023-05-01', 'Italy');

-- Insert more plans
INSERT INTO Plans (plan_name, price, duration_days)
VALUES 
('Family', 24.99, 30),
('Student', 7.99, 30),
('Annual', 99.99, 365);

-- Insert more subscriptions
INSERT INTO Subscriptions (user_id, plan_id, start_date, end_date, is_active)
VALUES 
(3, 3, '2023-03-01', '2023-03-31', 1),
(4, 4, '2023-03-15', '2023-04-14', 1),
(5, 5, '2023-04-01', '2024-03-31', 1),
(1, 2, '2023-04-01', '2023-04-30', 1),
(2, 1, '2023-04-15', '2023-05-14', 1);

-- Insert more authors
INSERT INTO Authors (name, biography)
VALUES 
('George R.R. Martin', 'American novelist and short story writer, best known for A Song of Ice and Fire.'),
('Agatha Christie', 'English writer known for her detective novels and short story collections.'),
('J.R.R. Tolkien', 'English writer, poet, philologist, and academic, best known for The Hobbit and The Lord of the Rings.'),
('Dan Brown', 'American author best known for his thriller novels.'),
('Haruki Murakami', 'Japanese writer, his books and stories have been bestsellers in Japan and internationally.');

-- Insert more narrators
INSERT INTO Narrators (name, biography)
VALUES 
('Roy Dotrice', 'British actor known for his record-breaking narration of A Song of Ice and Fire.'),
('David Suchet', 'English actor known for his portrayal of Agatha Christie''s detective Hercule Poirot.'),
('Rob Inglis', 'Australian actor and narrator, known for his narration of The Lord of the Rings.'),
('Paul Michael', 'Accomplished audiobook narrator who has voiced many of Dan Brown''s novels.'),
('Rupert Degas', 'British actor and narrator known for his versatility in accents and character voices.');

-- Insert more publishers
INSERT INTO Publishers (name, country)
VALUES 
('Bantam Books', 'USA'),
('HarperCollins', 'USA'),
('Allen & Unwin', 'Australia'),
('Doubleday', 'USA'),
('Kodansha', 'Japan');

-- Insert more categories
INSERT INTO Categories (name, description)
VALUES 
('Mystery', 'Books involving crime solving and detective work.'),
('Science Fiction', 'Books based on imagined future scientific or technological advances.'),
('Thriller', 'Books designed to keep readers in suspense.'),
('Historical Fiction', 'Fictional stories set in a particular period of history.'),
('Literary Fiction', 'Fiction that is considered to have literary merit.');

-- Insert more books
INSERT INTO Books (title, author_id, narrator_id, publisher_id, category_id, publication_date, duration_minutes, language, isbn)
VALUES 
('A Game of Thrones', 3, 3, 3, 1, '1996-08-01', 1200, 'English', '9780553103540'),
('Murder on the Orient Express', 4, 4, 4, 3, '1934-01-01', 390, 'English', '9780007119318'),
('The Fellowship of the Ring', 5, 5, 5, 1, '1954-07-29', 1080, 'English', '9780618346257'),
('The Da Vinci Code', 6, 6, 6, 4, '2003-03-18', 960, 'English', '9780385504201'),
('Kafka on the Shore', 7, 7, 7, 6, '2002-09-12', 1200, 'Japanese', '9781400079278');

-- Insert more reviews
INSERT INTO Reviews (user_id, book_id, rating, comment, review_date)
VALUES 
(3, 3, 5, 'Epic fantasy at its best!', '2023-05-01'),
(4, 4, 4, 'Classic mystery, keeps you guessing.', '2023-05-15'),
(5, 5, 5, 'A timeless masterpiece.', '2023-06-01'),
(1, 6, 3, 'Intriguing but sometimes far-fetched.', '2023-06-15'),
(2, 7, 4, 'Surreal and thought-provoking.', '2023-07-01');

-- Insert more bookmarks
INSERT INTO Bookmarks (user_id, book_id, position, created_at)
VALUES 
(3, 3, 500, '2023-05-10 10:00:00'),
(4, 4, 200, '2023-05-25 15:30:00'),
(5, 5, 700, '2023-06-05 20:00:00'),
(1, 6, 400, '2023-06-20 12:45:00'),
(2, 7, 600, '2023-07-05 09:15:00');

