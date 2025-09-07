CREATE TABLE if not exists books (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(50),
    price NUMERIC(6,2),
    is_available BOOLEAN DEFAULT TRUE
);
INSERT INTO books (title, author, price) VALUES
('Clean Code', 'Robert C. Martin', 25.50),
('The Pragmatic Programmer', 'Andrew Hunt', 30.00),
('Python Crash Course', 'Eric Matthes', 22.99),
('Atomic Habits', 'James Clear', 18.75),
('Deep Work', 'Cal Newport', 27.45);
SELECT * FROM books;

SELECT title, price FROM books;

SELECT * FROM books WHERE price > 25.00;

SELECT * FROM books WHERE is_available = TRUE;

SELECT * FROM books ORDER BY price DESC;