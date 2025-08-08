# 📚 Online Bookstore SQL Project
This mini SQL project involves performing structured queries on an online bookstore database to extract meaningful business insights. The project showcases the use of SQL operations such as JOIN, GROUP BY, ORDER BY, and aggregate functions to analyze key metrics like book sale and inventory trends.
It serves as a practice project to strengthen my data analysis and database querying skills using real-world e-commerce data.

## 🔍 SQL Queries Covered in This Project

✅ Basic SQL Queries
1. Retrieve all books in the "Fiction" genre

2. Find books published after the year 1950

3. List all customers from Canada

4. Show orders placed in November 2023

5. Retrieve the total stock of books available

6. Find the details of the most expensive book

7. Show all customers who ordered more than 1 quantity of a book

8. Retrieve all orders where the total amount exceeds $20

9. List all genres available in the books table

10. Find the book with the lowest stock

11. Calculate the total revenue generated from all orders

## 🚀 Advanced SQL Queries

12. Retrieve the total number of books sold for each genre

13. Find the average price of books in the "Fantasy" genre

14. List customers who have placed at least 2 orders

15. Find the most frequently ordered book

16. Show the top 3 most expensive books of "Fantasy" genre

17. Retrieve the total quantity of books sold by each author

18. List the cities where customers who spent over $30 are located

19. Find the customer who spent the most on orders

20. Calculate the stock remaining after fulfilling all orders


## 📁 Dataset Overview
The project uses 3 CSV files that simulate a relational bookstore database:

• customers.csv

Contains customer-related information:
customer_id, name, city, country

• orders.csv

Tracks purchase transactions:
order_id, customer_id, book_id, quantity, total_amount

• books.csv

Contains book and inventory details:
book_id, title, author, stock_quantity

These files were imported into a relational SQL database and linked using foreign keys (customer_id, book_id) to run various queries.

## 🛠️ Tools Used
• MySQL

• SQL Workbench (optional GUI client)

• Sample bookstore dataset (relational schema)

