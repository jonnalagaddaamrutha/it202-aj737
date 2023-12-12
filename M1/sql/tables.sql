CREATE TABLE Products (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    description TEXT,
    category VARCHAR(255),
    stock INT,
    created TIMESTAMP,
    modified TIMESTAMP,
    unit_price DECIMAL(10, 2),
    visibility BOOLEAN
);

CREATE TABLE Cart (
    id INT PRIMARY KEY,
    product_id INT,
    user_id INT,
    desired_quantity INT,
    unit_price DECIMAL(10, 2),
    created TIMESTAMP,
    modified TIMESTAMP,
    FOREIGN KEY (product_id) REFERENCES Products(id),
    FOREIGN KEY (user_id) REFERENCES Users(id)
);