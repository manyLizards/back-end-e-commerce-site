-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- CREATE TABLE FOR CATEGORY
CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT,
    category_name VARCHAR(30) NOT NULL
    PRIMARY KEY (id)
)

-- CREATE TABLE FOR PRODUCTS
CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(30) NOT NULL,
    price DECIMAL NOT NULL,
    --How do I validate that the value is a decimal?
    stock INT NOT NULL DEFAULT 10,
    --How do I validate that the value is numeric?
    category_id INT
    FOREIGN KEY (category_id)
    REFERENCES Category(id)
    PRIMARY KEY (id)
)

--CREATE TABLE FOR TAG
CREATE TABLE Tag (
    id INT NOT NULL AUTO_INCREMENT,
    tag_name VARCHAR(30),
    PRIMARY KEY (id)
)

--CREATE TABLE OR PRODUCT TAG
CREATE TABLE ProductTag (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    product_id INT,
    FOREIGN KEY (product_id)
    REFERENCES Product(id)
    tag_id INT 
    FOREIGN KEY (tag_id)
    REFERENCES Tag(id)
)