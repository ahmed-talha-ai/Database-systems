-- Create library database
CREATE DATABASE library;

-- Use library database
USE library;


-- Create Authors table
CREATE TABLE Authors (
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    author_name NVARCHAR(100) NOT NULL
);
-- Create Book table
CREATE TABLE Book (
    id_book INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(100) NOT NULL,
    author_id INT,
    category NVARCHAR(50),
    purchase_price DECIMAL(10, 2),
    date_purchased DATE,
    rating DECIMAL(3, 2),
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
);

-- Create Journals table
CREATE TABLE Journals (
    id_journal INT IDENTITY(1,1) PRIMARY KEY,
    title NVARCHAR(100) NOT NULL,
    category NVARCHAR(50),
    purchase_price DECIMAL(10, 2),
    date_purchased DATE,
    rating DECIMAL(3, 2)
);


-- Create Users table
CREATE TABLE Users (
    id_user INT IDENTITY(1,1) PRIMARY KEY,
    name NVARCHAR(100) NOT NULL,
    address NVARCHAR(255),
    phone_number NVARCHAR(15),
    email NVARCHAR(100)
);

-- Create Publishers table
CREATE TABLE Publishers (
    publisher_id INT IDENTITY(1,1) PRIMARY KEY,
    publisher_name NVARCHAR(100) NOT NULL
);

-- Create Genres table
CREATE TABLE Genres (
    genre_id INT IDENTITY(1,1) PRIMARY KEY,
    genre_name NVARCHAR(50) NOT NULL
);

-- Create LoanOperations table
CREATE TABLE LoanOperations (
    id_transaction INT IDENTITY(1,1) PRIMARY KEY,
    id_book INT,
    id_user INT,
    borrow_date DATE,
    return_date DATE,
    loan_status NVARCHAR(20),
    FOREIGN KEY (id_book) REFERENCES Book(id_book),
    FOREIGN KEY (id_user) REFERENCES Users(id_user)
);

-- Create Transactions table
CREATE TABLE Transactions (
    id_transaction INT IDENTITY(1,1) PRIMARY KEY,
    id_user INT,
    transaction_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (id_user) REFERENCES Users(id_user)
);


/*
Entities:

Book
Journals
Authors
Users
Publishers
Genres
LoanOperations
Transactions

Relationships:

One-to-Many relationship between Authors and Book (an Author can have many Books, but a Book is written by one Author).
One-to-Many relationship between Book and LoanOperations (a Book can be borrowed many times, but a LoanOperation is for one Book).
One-to-Many relationship between Users and LoanOperations (a User can have many LoanOperations, but a LoanOperation is for one User).
One-to-Many relationship between Users and Transactions (a User can have many Transactions, but a Transaction is for one User).
Attributes:

Book: id_book (PK), title, author_id (FK), category, purchase_price, date_purchased, rating
Journals: id_journal (PK), title, category, purchase_price, date_purchased, rating
Authors: author_id (PK), author_name
Users: id_user (PK), name, address, phone_number, email
Publishers: publisher_id (PK), publisher_name
Genres: genre_id (PK), genre_name
LoanOperations: id_transaction (PK), id_book (FK), id_user (FK), borrow_date, return_date, loan_status
Transactions: id_transaction (PK), id_user (FK), transaction_date, total_amount
This description outlines the entities, relationships, and attributes of the library database. You can use this information to create a visual representation of the ERD using a diagramming tool.
*/
-- Insert data into Authors table
INSERT INTO Authors (author_name) VALUES
    ('Author 1'),
    ('Author 2'),
    ('Author 3');

-- Insert data into Book table
INSERT INTO Book (title, author_id, category, purchase_price, date_purchased, rating) VALUES
    ('Book 1', 1, 'Fiction', 20.50, '2023-01-01', 4.5),
    ('Book 2', 2, 'Non-Fiction', 30.75, '2023-02-01', 3.8),
    ('Book 3', 3, 'Mystery', 25.00, '2023-03-01', 4.2);

-- Insert data into Journals table
INSERT INTO Journals (title, category, purchase_price, date_purchased, rating) VALUES
    ('Journal 1', 'Science', 15.50, '2023-01-15', 4.0),
    ('Journal 2', 'Technology', 18.75, '2023-02-15', 3.5),
    ('Journal 3', 'Health', 12.00, '2023-03-15', 4.8);

-- Insert data into Users table
INSERT INTO Users (name, address, phone_number, email) VALUES
    ('User 1', 'Address 1', '1234567890', 'user1@email.com'),
    ('User 2', 'Address 2', '9876543210', 'user2@email.com'),
    ('User 3', 'Address 3', '5555555555', 'user3@email.com');

-- Insert data into Publishers table
INSERT INTO Publishers (publisher_name) VALUES
    ('Publisher A'),
    ('Publisher B'),
    ('Publisher C');

-- Insert data into Genres table
INSERT INTO Genres (genre_name) VALUES
    ('Genre X'),
    ('Genre Y'),
    ('Genre Z');

-- Insert data into LoanOperations table
INSERT INTO LoanOperations (id_book, id_user, borrow_date, return_date, loan_status) VALUES
    (1, 1, '2023-01-02', '2023-01-10', 'Returned'),
    (2, 2, '2023-02-03', '2023-02-12', 'Not Returned'),
    (3, 3, '2023-03-04', NULL, 'Borrowed');

-- Insert data into Transactions table
INSERT INTO Transactions (id_user, transaction_date, total_amount) VALUES
    (1, '2023-01-15', 50.25),
    (2, '2023-02-20', 30.75),
    (3, '2023-03-25', 45.00);


--Query Questions:
--1)Select top 5 books ordered by rating:
SELECT TOP 5 title, rating FROM Book ORDER BY rating DESC;

--2)Select books and their authors using INNER JOIN:
SELECT Book.title, Authors.author_name
FROM Book INNER JOIN Authors
ON Book.author_id = Authors.author_id;

--3)Select journals with a rating greater than 4.0:
SELECT * FROM Journals
WHERE rating > 4.0;

--4)Select users who made transactions with the total amount ordered by amount:
SELECT Users.name, Transactions.total_amount
FROM Users INNER JOIN Transactions
ON Users.id_user = Transactions.id_user
ORDER BY Transactions.total_amount;

--5)Select genres and the count of books in each genre using GROUP BY:
SELECT Genres.genre_name, COUNT(Book.id_book) AS book_count
FROM Genres LEFT JOIN Book
ON Genres.genre_id = Book.genre_id
GROUP BY Genres.genre_name;

--6)Select the average rating of books by each author using GROUP BY:
SELECT Authors.author_name, AVG(Book.rating) AS avg_rating
FROM Authors LEFT JOIN Book
ON Authors.author_id = Book.author_id
GROUP BY Authors.author_name;

--7)Select books purchased in the year 2023 ordered by date:
SELECT * FROM Book WHERE YEAR(date_purchased) = 2023 ORDER BY date_purchased;

--8)Select authors who wrote more than 2 books using HAVING:
SELECT Authors.author_name, COUNT(Book.id_book) AS book_count
FROM Authors LEFT JOIN Book
ON Authors.author_id = Book.author_id
GROUP BY Authors.author_name
HAVING COUNT(Book.id_book) > 2;

--9)Select the top 3 most borrowed books:
SELECT TOP 3 Book.title, COUNT(LoanOperations.id_transaction) AS borrow_count
FROM Book INNER JOIN LoanOperations
ON Book.id_book = LoanOperations.id_book
GROUP BY Book.title
ORDER BY borrow_count DESC;
--10)Select users who borrowed books but haven't returned using LEFT JOIN:
SELECT Users.name, LoanOperations.borrow_date, LoanOperations.return_date
FROM Users
LEFT JOIN LoanOperations ON Users.id_user = LoanOperations.id_user
WHERE LoanOperations.loan_status = 'Borrowed' AND LoanOperations.return_date IS NULL;

-- Insert additional data into Authors table with real names
INSERT INTO Authors (author_name) VALUES
    ('J.K. Rowling'), ('George R.R. Martin'), ('Haruki Murakami'), ('Agatha Christie'), ('Stephen King'),
    ('Jane Austen'), ('Mark Twain'), ('J.R.R. Tolkien'), ('Leo Tolstoy'), ('F. Scott Fitzgerald'),
    ('Gabriel Garcia Marquez'), ('Ernest Hemingway'), ('Virginia Woolf'), ('Charles Dickens'), ('Homer'),
    ('Hermann Hesse'), ('Albert Camus'), ('William Faulkner'), ('Kurt Vonnegut'), ('Ayn Rand'),
    ('Margaret Atwood'), ('Toni Morrison'), ('Maya Angelou'), ('Gabriela Mistral'), ('Pablo Neruda'),
    ('Franz Kafka'), ('Emily Bronte'), ('Anton Chekhov'), ('H.G. Wells'), ('Aldous Huxley'),
    ('Isaac Asimov'), ('Arthur C. Clarke'), ('Philip K. Dick'), ('Ray Bradbury'), ('George Orwell'),
    ('C.S. Lewis'), ('Roald Dahl'), ('Jules Verne'), ('Jane Goodall'), ('Carl Sagan'), ('Neil Gaiman'),
    ('Michael Crichton'), ('Octavia Butler'), ('Diana Gabaldon'), ('Dan Brown'), ('J.D. Salinger'),
    ('Erin Morgenstern'), ('Chimamanda Ngozi Adichie'), ('Arundhati Roy'), ('Kazuo Ishiguro');

	-- Insert additional data into Book table with real titles and categories
INSERT INTO Book (title, author_id, category, purchase_price, date_purchased, rating) VALUES
    ('The Hobbit', 8, 'Fantasy', 19.99, '2023-04-15', 4.9),
    ('Dune', 11, 'Science Fiction', 24.50, '2023-05-20', 4.5),
    ('The Girl with the Dragon Tattoo', 13, 'Mystery', 21.75, '2023-06-25', 4.3),
    ('To Kill a Mockingbird', 7, 'Classic', 18.50, '2023-07-01', 4.8),
    ('1984', 17, 'Dystopian', 16.99, '2023-08-10', 4.7),
    ('The Great Gatsby', 5, 'Fiction', 22.25, '2023-09-15', 4.6),
    ('The Catcher in the Rye', 20, 'Coming of Age', 20.00, '2023-10-01', 4.2),
    ('Pride and Prejudice', 6, 'Romance', 18.75, '2023-11-05', 4.9),
    ('The Shining', 16, 'Horror', 26.99, '2023-12-15', 4.4),
    ('The Lord of the Rings', 8, 'Fantasy', 29.50, '2024-01-20', 4.8),
    ('The Hunger Games', 19, 'Dystopian', 17.75, '2024-02-25', 4.1),
    ('The Alchemist', 23, 'Philosophical', 15.50, '2024-09-01', 4.5),
    ('The Martian', 12, 'Science Fiction', 23.75, '2024-10-05', 4.7),
    ('Gone Girl', 14, 'Mystery', 20.00, '2024-11-10', 4.2),
    ('The Odyssey', 15, 'Epic Poetry', 18.25, '2024-12-15', 4.6);


	-- Insert additional data into Users table with real names, addresses, phone numbers, and emails
INSERT INTO Users (name, address, phone_number, email) VALUES
    ('John Smith', '123 Main St, Cityville', '5551234567', 'john.smith@email.com'),
    ('Jane Doe', '456 Oak St, Townburg', '5559876543', 'jane.doe@email.com'),
    ('Michael Johnson', '789 Pine St, Villagetown', '5551112222', 'michael.johnson@email.com'),
    ('Emily White', '101 Elm St, Hamlet', '5553334444', 'emily.white@email.com'),
    ('Daniel Brown', '202 Maple St, Suburbia', '5555556666', 'daniel.brown@email.com'),
    ('Sophia Davis', '303 Birch St, Countryside', '5557778888', 'sophia.davis@email.com'),
    ('Christopher Lee', '404 Cedar St, Outskirts', '5559990000', 'christopher.lee@email.com'),
    ('Olivia Wilson', '505 Redwood St, Farmland', '5552223333', 'olivia.wilson@email.com'),
    ('Matthew Taylor', '606 Pine St, Riverside', '5554445555', 'matthew.taylor@email.com'),
    ('Emma Moore', '707 Oak St, Lakeside', '5556667777', 'emma.moore@email.com'),
    ('Liam Hall', '808 Birch St, Mountainside', '5551113333', 'liam.hall@email.com'),
    ('Ava Martinez', '909 Elm St, Hilltop', '5552224444', 'ava.martinez@email.com'),
    ('Noah Clark', '1011 Cedar St, Valley', '5553335555', 'noah.clark@email.com'),
    ('Isabella Turner', '1213 Pine St, Highlands', '5554446666', 'isabella.turner@email.com'),
    ('James Garcia', '1315 Maple St, Plateau', '5555557777', 'james.garcia@email.com');

	-- Insert additional data into Publishers table with real names
INSERT INTO Publishers (publisher_name) VALUES
    ('Random House'),
    ('Penguin Books'),
    ('HarperCollins'),
    ('Simon & Schuster'),
    ('Macmillan Publishers'),
    ('Hachette Book Group'),
    ('Scholastic Corporation'),
    ('Wiley'),
    ('Oxford University Press'),
    ('Pearson Education'),
    ('Cambridge University Press'),
    ('Bloomsbury Publishing'),
    ('Springer'),
    ('Elsevier'),
    ('MIT Press'),
    ('Houghton Mifflin Harcourt'),
    ('Vintage Books'),
    ('Palgrave Macmillan'),
    ('John Wiley & Sons'),
    ('University of Chicago Press');


	-- Insert additional data into Genres table with real names
INSERT INTO Genres (genre_name) VALUES
    ('Science Fiction'),
    ('Mystery'),
    ('Romance'),
    ('Thriller'),
    ('Fantasy'),
    ('Historical Fiction'),
    ('Biography'),
    ('Self-Help'),
    ('Cookbook'),
    ('Science'),
    ('Travel'),
    ('Poetry'),
    ('Drama'),
    ('Horror'),
    ('Graphic Novel'),
    ('Business'),
    ('Children''s'),
    ('Young Adult'),
    ('History'),
    ('Philosophy');

-- Insert additional data into LoanOperations table with real data
INSERT INTO LoanOperations (id_book, id_user, borrow_date, return_date, loan_status) VALUES
    (7, 7, '2023-07-05', '2023-07-15', 'Returned'),
    (8, 8, '2023-08-06', '2023-08-18', 'Not Returned'),
    (9, 9, '2023-09-07', NULL, 'Borrowed'),
    (10, 10, '2023-10-08', '2023-10-20', 'Returned'),
    (11, 11, '2023-11-09', '2023-11-25', 'Not Returned'),
    (12, 12, '2023-12-10', NULL, 'Borrowed'),
    (13, 1, '2024-01-01', '2024-01-10', 'Returned'),
    (14, 2, '2024-02-02', '2024-02-12', 'Not Returned'),
    (15, 3, '2024-03-03', NULL, 'Borrowed'),
    (16, 4, '2024-04-04', '2024-04-14', 'Returned'),
    (17, 5, '2024-05-05', '2024-05-15', 'Not Returned'),
    (18, 6, '2024-06-06', NULL, 'Borrowed'),
    -- Repeated User IDs and Book IDs
    (7, 1, '2024-07-01', '2024-07-10', 'Returned'),
    (8, 2, '2024-08-05', '2024-08-15', 'Not Returned'),
    (9, 3, '2024-09-10', NULL, 'Borrowed'),
    (10, 4, '2024-10-15', '2024-10-25', 'Returned'),
    (11, 5, '2024-11-20', '2024-11-30', 'Not Returned'),
    (12, 6, '2024-12-25', NULL, 'Borrowed');


	-- Insert additional data into Transactions table with real data
-- Insert additional data into Transactions table with real data
INSERT INTO Transactions (id_user, transaction_date, total_amount) VALUES
    (7, '2023-07-30', 50.75),
    (8, '2023-08-10', 30.25),
    (9, '2023-09-15', 45.50),
    (10, '2023-10-20', 28.00),
    (11, '2023-11-25', 38.75),
    (12, '2023-12-30', 55.00),
    (13, '2024-01-01', 40.25),
    (14, '2024-02-05', 22.50),
    (15, '2024-03-10', 35.75),
    (16, '2024-04-15', 29.50),
    (17, '2024-05-20', 42.00),
    (18, '2024-06-25', 33.25),
    (7, '2024-07-01', 25.00),
    (8, '2024-08-05', 37.50),
    (9, '2024-09-10', 18.25),
    (10, '2024-10-15', 43.00),
    (11, '2024-11-20', 30.75),
    (12, '2024-12-25', 48.50),
    (13, '2025-01-01', 22.00),
    (14, '2025-02-05', 34.25),
    (15, '2025-03-10', 27.50),
    (16, '2025-04-15', 39.75);


--1)Select all books with their titles and authors:
SELECT Book.title, Authors.author_name
FROM Book INNER JOIN Authors 
ON Book.author_id = Authors.author_id;

--2)Find the top 10 highest-rated books:
SELECT top(10) rating, title
FROM Book
ORDER BY rating DESC;

--3)List the number of books in each category:
SELECT category, COUNT(*) AS book_count
FROM Book
GROUP BY category;

--4)Retrieve the total purchase amount for each user:
SELECT Users.name, SUM(Transactions.total_amount) AS total_purchase
FROM Users LEFT JOIN Transactions ON Users.id_user = Transactions.id_user
GROUP BY Users.name;


--5)Show the average rating for each genre:
SELECT Genres.genre_name, AVG(Book.rating) AS avg_rating
FROM Genres LEFT JOIN Book
ON Genres.genre_id = Book.genre_id
GROUP BY Genres.genre_name;

--6)Identify books borrowed but not returned:
SELECT Book.title, Users.name AS borrower
FROM Book INNER JOIN LoanOperations
ON Book.id_book = LoanOperations.id_book INNER JOIN Users 
ON LoanOperations.id_user = Users.id_user
WHERE LoanOperations.loan_status = 'Borrowed';

--7)Find the most purchased category:
SELECT top(1) category, COUNT(*) 
FROM Book
GROUP BY category
ORDER BY COUNT(*) DESC;

--8)List authors with the total number of books they have:
SELECT Authors.author_name, COUNT(*) AS book_count
FROM Authors LEFT JOIN Book
ON Authors.author_id = Book.author_id
GROUP BY Authors.author_name;

--9)Retrieve books purchased in 2023:
SELECT title, date_purchased
FROM Book
WHERE YEAR(date_purchased) = 2023;

--10)Show users who have made transactions exceeding $40:
SELECT Users.name, Transactions.total_amount
FROM Users
INNER JOIN Transactions ON Users.id_user = Transactions.id_user
WHERE Transactions.total_amount > 40;

--11)List books in the 'Science Fiction' category ordered by rating:
SELECT title, rating
FROM Book
WHERE category = 'Science Fiction'
ORDER BY rating DESC;

--12)Find the user who borrowed the most books:
SELECT top(1) Users.name, COUNT(*) AS books_borrowed
FROM Users INNER JOIN LoanOperations
ON Users.id_user = LoanOperations.id_user
WHERE LoanOperations.loan_status = 'Borrowed'
GROUP BY Users.name
ORDER BY books_borrowed DESC;

--13)Show the top 5 authors with the most books purchased:
SELECT top(5) COUNT(*) AS books_purchased, Authors.author_name
FROM Authors
LEFT JOIN Book ON Authors.author_id = Book.author_id
GROUP BY Authors.author_name
ORDER BY books_purchased DESC;

--14)Retrieve users who have not made any transactions:
SELECT Users.name
FROM Users LEFT JOIN Transactions
ON Users.id_user = Transactions.id_user
WHERE Transactions.id_transaction IS NULL;

--15)List the total number of books and journals purchased:
SELECT 'Books' AS item_type, COUNT(*) AS count
FROM Book
UNION
SELECT 'Journals' AS item_type, COUNT(*) AS count
FROM Journals;


--16)Find the average purchase price for each publisher:
SELECT Publishers.publisher_name, AVG(Book.purchase_price) AS avg_price
FROM Publishers LEFT JOIN Book
ON Publishers.publisher_id = Book.publisher_id
GROUP BY Publishers.publisher_name;

--17)Show the total number of transactions each month in 2023:
SELECT MONTH(transaction_date) AS month, COUNT(*) AS transaction_count
FROM Transactions
WHERE YEAR(transaction_date) = 2023
GROUP BY MONTH(transaction_date);

--18)Retrieve the books with more than 4 ratings:
SELECT title, rating
FROM Book
WHERE rating > 4;

--19)List the top 5 most borrowed books:
SELECT top(5) COUNT(*) AS borrow_count, Book.title
FROM Book
INNER JOIN LoanOperations ON Book.id_book = LoanOperations.id_book
GROUP BY Book.title
ORDER BY borrow_count DESC;

--20)Find the average rating for books in each category:
SELECT category, AVG(rating) AS avg_rating
FROM Book
GROUP BY category;

--21)Show the user with the highest total transaction amount:
SELECT  top(1) SUM(Transactions.total_amount) AS total_amount, Users.name
FROM Users INNER JOIN Transactions
ON Users.id_user = Transactions.id_user
GROUP BY Users.name
ORDER BY total_amount DESC;

--22)Retrieve the journals with a rating above 4.5:
SELECT title, rating
FROM Journals
WHERE rating > 4.5;

--23)List authors who have books with a rating above 4.0:
SELECT Authors.author_name
FROM Authors INNER JOIN Book
ON Authors.author_id = Book.author_id
WHERE Book.rating > 4.0;

--24)Show the total number of books purchased in each year:
SELECT YEAR(date_purchased) AS year, COUNT(*) AS book_count
FROM Book
GROUP BY YEAR(date_purchased);

--25)Find the user who borrowed the same book multiple times:
SELECT Users.name, Book.title, COUNT(*) AS borrow_count
FROM Users INNER JOIN LoanOperations
ON Users.id_user = LoanOperations.id_user INNER JOIN Book
ON LoanOperations.id_book = Book.id_book
WHERE LoanOperations.loan_status = 'Borrowed'
GROUP BY Users.name, Book.title
HAVING COUNT(*) > 1;

alter table Book
add genre_id int FOREIGN KEY (genre_id) REFERENCES Genres(genre_id)

--Alter Statements:
--1)Alter Authors Table - Add a Column:
ALTER TABLE Authors
ADD birth_date DATE;

--2)Alter Book Table - Modify a Column:
ALTER TABLE Book
ALTER COLUMN title NVARCHAR(150);

--3)Alter Users Table - Rename a Column:
EXEC sp_rename 'Users.phone_number', 'contact_number', 'COLUMN';

--4)Alter Publishers Table - Add a Foreign Key:
ALTER TABLE Publishers
ADD FOREIGN KEY (main_office_id) REFERENCES Publishers(publisher_id);

--5)Alter Genres Table - Add a Unique Constraint:
ALTER TABLE Genres
ADD CONSTRAINT unique_genre_name UNIQUE (genre_name);

--6)Alter LoanOperations Table - Add Check Constraint:
ALTER TABLE LoanOperations
ADD CONSTRAINT check_loan_status CHECK (loan_status IN ('Borrowed', 'Returned'));

--Drop Statements:
--1)Drop Column in Authors Table:
ALTER TABLE Authors
DROP COLUMN birth_date;

--2)Drop Foreign Key in Book Table:
ALTER TABLE Book
DROP FK_Authors;

--3)Drop Index in Users Table:
DROP INDEX IX_Users_name ON Users;

--4)Drop Table Publishers:
DROP TABLE Publishers;

--5)Drop Unique Constraint in Genres Table:

ALTER TABLE Genres
DROP CONSTRAINT unique_genre_name;

--6)Drop Check Constraint in LoanOperations Table:
ALTER TABLE LoanOperations
DROP CONSTRAINT check_loan_status;

--Update Statements:
--1)Update Authors Table - author name:
UPDATE Authors
SET author_name = 'Ahmed Talha'
WHERE author_id = 1;

--2)Update Book Table - Change Category:
UPDATE Book
SET category = 'Fiction'
WHERE id_book = 1;
--3)Update Users Table - Change Address:
UPDATE Users
SET address = '123 Main St'
WHERE id_user = 1;

--4)Update Genres Table - Modify Genre Name:
UPDATE Genres
SET genre_name = 'Science Fiction'
WHERE genre_id = 1;

--6)Update LoanOperations Table - Update Loan Status:
UPDATE LoanOperations
SET loan_status = 'Returned'
WHERE id_transaction = 1;

--Delete Statements:
--1)Delete Author from Authors Table:
DELETE FROM Authors
WHERE author_id = 1;

--2)Delete Book from Book Table:
DELETE FROM Book
WHERE id_book = 1;

--3)Delete User from Users Table:
DELETE FROM Users
WHERE id_user = 1;

--4)Delete Publisher from Publishers Table:
DELETE FROM Publishers
WHERE publisher_id = 1;

--5)Delete Genre from Genres Table:
DELETE FROM Genres
WHERE genre_id = 1;

--6)Delete LoanOperation from LoanOperations Table:
DELETE FROM LoanOperations
WHERE id_transaction = 1;