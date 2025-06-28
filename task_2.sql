CREATE TABLE books(
    book_id INT AUTO_INCREMENT PRIMARY KEY,
    tittle VARCHAR(130),
    author_id INT FOREIGN KEY(author_id) REFERENCES author(author_id),
    price DOUBLE NOT NULL,
    publication_date DATE NOT NULL,

);

CREATE TABLE authors(
    author_id INT AUTO_INCREMENT PRIMARY KEY,
    author_name VARCHAR(215),

);

CREATE TABLE customers(
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT,

);

CREATE TABLE orders(
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    order_date DATE NOT NULL,

);

CREATE TABLE Order_Details(
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT FOREIGN KEY(order_id) REFERENCES order(order_id),
    book_id INT FOREIGN KEY(book_id) REFERENCES books(book_id),
    quantity DOUBLE NOT NULL,

);