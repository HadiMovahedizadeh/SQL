-- Create Authors table
CREATE TABLE Authors (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL
);

-- Create Books table
CREATE TABLE Books (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    author_id INTEGER,
    FOREIGN KEY (author_id) REFERENCES Authors(id)
);

-- Insert authors
INSERT INTO Authors (name) VALUES ('J.K. Rowling');
INSERT INTO Authors (name) VALUES ('George Orwell');

-- Insert books
INSERT INTO Books (title, author_id) VALUES ('Harry Potter', 1);
INSERT INTO Books (title, author_id) VALUES ('1984', 2);

