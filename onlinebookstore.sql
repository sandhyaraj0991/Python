*/Database Creation:*/
  
CREATE DATABASE onlinebookstore;
USE onlinebookstore;

/*Tables Creation:*/

CREATE TABLE books(book_id INT PRIMARY KEY, 
title VARCHAR(50),
author_id INT,
price DECIMAL(10,2),
publication_year VARCHAR(20) );

CREATE TABLE authors(author_id INT PRIMARY KEY, 
author_name VARCHAR(50),
country VARCHAR(20) );

CREATE TABLE orders(order_id INT PRIMARY KEY, 
book_id INT,
customer_name VARCHAR(50),
order_date VARCHAR(20));

/*Data Insertion:*/

INSERT INTO books VALUES(10,'A Life in Movies',100,'500','2020');
INSERT INTO books VALUES(11,'TWO COUNTRIES',101,'350','2005');
INSERT INTO books VALUES(12,'The World: A Family History',102,'200','2008');
INSERT INTO books VALUES(13,'the Story of a Dalit Chief Secretary',103,'400','2022');
INSERT INTO books VALUES(14,'Ambedkar: A Life',104,'250','2023');


INSERT INTO authors VALUES(100,'Shubhra Gupta','INDIA');
INSERT INTO authors VALUES(101,'CHETAN BHAGATH','INDIA');
INSERT INTO authors VALUES(102,'Simon Sebag Montefiore','UK');
INSERT INTO authors VALUES(103,'Kaki Madhava Rao','USA');
INSERT INTO authors VALUES(104,'Shashi Tharoor','INDIA');


INSERT INTO orders VALUES(1001,10,'Sandhya','10/12/2023');
INSERT INTO orders VALUES(1002,13,'Pradeep','05/04/2023');
INSERT INTO orders VALUES(1003,14,'Ananya','04/08/2023');
INSERT INTO orders VALUES(1004,11,'Avany','02/01/2023');
INSERT INTO orders VALUES(1005,10,'Devan','02/09/2023');

/*Data Retrieval:*/

SELECT * FROM books;
SELECT * FROM authors;
SELECT * FROM orders;

/*Data Relationships:*/

ALTER TABLE books ADD genre VARCHAR(20);
ALTER TABLE orders ADD quantity INT;

SELECT DISTINCT title FROM books;
SELECT DISTINCT author_name FROM authors;


/* Data Retrieval with Relationships:*/ 


SELECT * FROM books INNER JOIN authors
WHERE books.author_id=authors.author_id;

SELECT * FROM orders INNER JOIN books
WHERE books.book_id=orders.book_id;



