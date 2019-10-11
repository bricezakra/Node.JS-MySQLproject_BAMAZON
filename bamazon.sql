DROP DATABASE IF EXISTS bamazon_db;
CREATE database bamazon_db;

USE bamazon_db;

CREATE TABLE products (
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(100) NOT NULL, 
	department_name VARCHAR(100) NOT NULL, 
	price DECIMAL(11, 2) NOT NULL, 
	stock_quantity INTEGER NOT NULL, 
    PRIMARY KEY (item_id)
);

INSERT INTO products(product_name, department_name, price, stock_quantity)
    VALUES("Chopard", "Watch", 10000, 80),
        ("Summer Tank Top", "Tops", 45, 200), 
        ("Fashion Jacket", "Tops", 350, 60), 
        ("Slim Jeans", "Bottoms", 100, 150), 
        ("Polo Ralph Lauren", "Tops", 85, 350), 
        ("Cartier", "Watch", 15000, 15), 
        ("Golf Short", "Bottoms", 90, 80), 
        ("Printed T-shirt", "Tops", 75, 100), 
        ("Golf Trousers", "Bottoms", 150, 125),      
        ("Fashion Shirt", "Tops", 125, 120); 
        

ALTER TABLE products
  ADD product_sales INTEGER NOT NULL DEFAULT 0;

SELECT * FROM products;

CREATE TABLE departments (
	department_id INTEGER AUTO_INCREMENT NOT NULL, 
    department_name VARCHAR(100) NOT NULL, 
    over_head_costs DECIMAL(11, 2) NOT NULL DEFAULT 0,
    PRIMARY KEY (department_id)
); 

INSERT INTO departments(department_name, over_head_costs)
VALUES("Watch", 20000), ("Tops", 10000), ("Bottoms", 10000), ("Other", 5000);

SELECT * FROM departments;