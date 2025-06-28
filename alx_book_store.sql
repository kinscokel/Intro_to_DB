CREATE TABLE Books (
    book id INT AUTO_INCREMENT primary key,
    title VARCHAR(130) NOT NULL,
    author_id INT,
    price DOUBLE NOT NULL,
    publication_date DATE,
    FOREIGN KEY (author_id) REFERENCES Authors(author_id)
        ON DELETE SET NULL
        ON UPDATE CASCADE
);

        CREATE TABLE Authors (
            author id INT AUTO_INCREMENT PRIMARY KEY,
            author_name VARCHAR(215),
        );

        CREATE TABLE Customers (
            customer id INT AUTO_INCREMENT PRIMARY KEY,
            customer_name VARCHAR(215) NOT NULL,
            email VARCHAR(215), NOT NULL,
            address TEXT,
        );

        CREATE TABLE Orders (
            order id INT AUTO_INCREMENT PRIMARY KEY,
            customer_id INT,
            order_date DATE NOT NULL,
            total_amount DOUBLE NOT NULL,
            FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
                ON DELETE CASCADE
                ON DELETE CASCADE
        );

        CREATE TABLE Order_Details (
            order_detailed_id INT AUTO_INCREMENT PRIMARY KEY,
            order_id INT,
            book_id INT,
            quantity INT NOT NULL,
            price DOUBLE NOT NULL,
            FOREIGN KEY (order_id)  REFERENCES Order (order_id)
                 ON DELETE CASCADE
                 ON UPDATE CASCADE,
                 FOREIGN KEY (book_id) REFERENCES Books(book_id)
                      ON DELETE CASCADE
                      ON UPDATE CASCADE
        );