USE product_db

CREATE TABLE products(
    Id INT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Price DECIMAL(10,2),
    Description VARCHAR(255)
);