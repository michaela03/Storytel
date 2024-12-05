-- Create database
CREATE DATABASE Storytel;
GO

USE Storytel;
GO

-- Create tables
CREATE TABLE Users (
    user_id INT PRIMARY KEY IDENTITY(1,1),
    username NVARCHAR(50) NOT NULL,
    email NVARCHAR(100) NOT NULL,
    password_hash NVARCHAR(255) NOT NULL,
    date_joined DATE NOT NULL,
    country NVARCHAR(50) NOT NULL
);

CREATE TABLE Plans (
    plan_id INT PRIMARY KEY IDENTITY(1,1),
    plan_name NVARCHAR(50) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    duration_days INT NOT NULL
);

CREATE TABLE Subscriptions (
    subscription_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT NOT NULL,
    plan_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    is_active BIT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (plan_id) REFERENCES Plans(plan_id)
);

CREATE TABLE Authors (
    author_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    biography NVARCHAR(MAX)
);

CREATE TABLE Narrators (
    narrator_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    biography NVARCHAR(MAX)
);

CREATE TABLE Publishers (
    publisher_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(100) NOT NULL,
    country NVARCHAR(50) NOT NULL
);

CREATE TABLE Categories (
    category_id INT PRIMARY KEY IDENTITY(1,1),
    name NVARCHAR(50) NOT NULL,
    description NVARCHAR(MAX)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY IDENTITY(1,1),
    title NVARCHAR(255) NOT NULL,
    author_id INT NOT NULL,
    narrator_id INT NOT NULL,
    publisher_id INT NOT NULL,
    category_id INT NOT NULL,
    publication_date DATE NOT NULL,
    duration_minutes INT NOT NULL,
    language NVARCHAR(50) NOT NULL,
    isbn NVARCHAR(13) NOT NULL,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id),
    FOREIGN KEY (narrator_id) REFERENCES Narrators(narrator_id),
    FOREIGN KEY (publisher_id) REFERENCES Publishers(publisher_id),
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

CREATE TABLE Reviews (
    review_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    rating INT NOT NULL,
    comment NVARCHAR(MAX),
    review_date DATE NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

CREATE TABLE Bookmarks (
    bookmark_id INT PRIMARY KEY IDENTITY(1,1),
    user_id INT NOT NULL,
    book_id INT NOT NULL,
    position INT NOT NULL,
    created_at DATETIME NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);