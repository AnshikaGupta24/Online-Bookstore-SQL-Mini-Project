create database if not exists  Online_Book_Store;

use  Online_Book_Store;
create table Books (
Book_ID int primary key,
Title varchar(100),
Author varchar(100),
Genre varchar(50),
Published_Year int,
Price float,
Stock int
);

create table Customers (
Customer_ID int primary key,
Name varchar(100),
Email  varchar(100),
Phone int,
City  varchar(100),
Country  varchar(100)
);

create table Orders (
Order_ID int primary key,
Customer_ID int references Customers(Customer_ID),
Book_ID int  references Books(Book_ID),
Order_Date date,
Quantity int,
Total_Amount float
);

-- Query1: retrieve all the books in 'fiction' genre
select * from Books
where Genre= "Fiction" ;

-- Query2: books published after year 1950
select * from Books 
where Published_Year > 1950;

-- Query3: list all ythe customers from 'Canada'
select * from Customers 
where Country ="Canada";

-- Query4: Show Orders placed in November 2023
select * from Orders
where Order_Date between '2023-11-01' and '2023-11-30';

-- Query5: Retrieve the total stock of book available
select sum(Stock) as Total_Stock from Books;

-- Query6: Find the details of most expensive book
select * from Books order by Price desc limit 1; 

-- Query7: Show all customers who ordered more than 1 quantity of book
select *  from orders where Quantity > 1;

-- Query8: Retrieve all orders where the total amount exceed $20
select * from Orders 
where Total_Amount > 20;

-- Query9: List all genres available in book table
select distinct Genre from Books;

-- Query10: Find the books with lowest Stock
select Book_ID, Title, Stock from Books 
where Stock =0;

-- Query11: Calculate the total revenue generated from all Orders
select sum(Total_Amount) as Total_Revenue from Orders;

-- Query12: Retrieve the total no. of books sold for each genre
select b.Genre, sum(o.Quantity) as Total_book_sold
from Orders as o
join Books as b
on b.Book_ID = o.Book_ID
group by b.Genre;

-- Query13: Find the avg price of books in the 'fantasy' genre
select avg(Price) as Avg_Price
from Books 
where genre="fantasy";

-- Query14: List customers who have placed atleast 2 orders
select  o.customer_id, c.name, count(o.order_id) as No_of_Orders
from orders as o
join customers as c
on c.customer_id = o.customer_id
group by  o.customer_id, c.name having count(order_id) >=2;

-- Query15: find the most frequently ordered book
select o.book_id, b.title, count(o.order_id) as frequently_ordered
from orders as o
join books as b
on b.book_id = o.book_id
group by book_id order by count(o.order_id) desc limit 1 ;

-- Query16: show the top 3 most expensive book from 'Fantasy' genre
select * from books
where genre= 'Fantasy'
order by Price desc limit 3;

-- Query17: Retrieve the total quantity of books sold by each author
select o.book_id, b.author , sum(o.quantity)
from orders as o
join books as b
on b.book_id = o.book_id
group by o.book_id , b.author;

-- OR (another way)
select b.author, sum(o.quantity) as Total_quantity_sold
from orders as o
join books as b 
on b.book_id = o.book_id
group by author;

-- Query18: list the cities where customers who spent over $30 are located
select distinct c.city 
from orders as o
join customers as c
on c.customer_id = o.customer_id
where total_amount > 30;

-- Query19: Find the customer who spent the most on orders
select c.customer_id , c.name , sum(o.total_amount) as Total_Spent
from customers as c
join orders as o 
on o.customer_id = c.customer_id
group by c.customer_id , c.name
order by sum(o.total_amount) desc limit 1;

-- Query20: Calculate the stock remaining after fulfilling all orders
select b.title , b.stock , coalesce(sum(o.quantity), 0) as No_of_Orders ,
b.stock-coalesce(sum(o.quantity), 0) as stock_left
from books as b
join orders as o 
on o.book_id = b.book_id
group by b.title ,b.stock
order by b.stock ;











