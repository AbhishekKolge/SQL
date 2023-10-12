-- MySQL
-- products table created
CREATE TABLE products (
    product_name VARCHAR(300),
    price NUMERIC(5, 2),
    description TEXT,
    stock_amount INT,
    image TEXT
);
-- table updated and contraints added
ALTER TABLE products
MODIFY product_name VARCHAR(300) NOT NULL,
    MODIFY price NUMERIC(5, 2) NOT NULL CHECK (price > 0),
    MODIFY stock_amount INT DEFAULT 0;
-- table updated and primary key added
ALTER TABLE products
ADD COLUMN id INT PRIMARY KEY AUTO_INCREMENT;
-- inserted data into products table
INSERT INTO products (product_name, price, image)
VALUES ('BTS Cards', '200.23', 'some_image_path')