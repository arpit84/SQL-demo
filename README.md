# sql-demo

SQL Query Optimization 

## Normalization

Normalization is a database design technique that organizes tables to minimize redundancy and dependency. The goal is to ensure that data is stored efficiently, without unnecessary duplication, while ensuring consistency and integrity. Let's explain the First Normal Form (1NF) and Second Normal Form (2NF) with examples.

First Normal Form (1NF):
A table is in 1NF if:

All values in each column are atomic (indivisible), meaning there are no multiple values (no arrays or lists).
Each record (row) is unique, meaning no duplicate rows.
Example of a Table Not in 1NF:
OrderID	CustomerName	ItemsOrdered	Quantity
1	John Doe	Pen, Notebook	2, 1
2	Jane Smith	Pencil	3
In this example, the "ItemsOrdered" and "Quantity" columns have multiple values for a single row (e.g., Pen and Notebook in one row).

To convert it to 1NF (make it atomic):
OrderID	CustomerName	ItemOrdered	Quantity
1	John Doe	Pen	2
1	John Doe	Notebook	1
2	Jane Smith	Pencil	3
Here, each column has atomic values, and the table is now in 1NF.

Second Normal Form (2NF):
A table is in 2NF if:

It is in 1NF.
All non-key attributes (columns) are fully dependent on the entire primary key and not just part of it (this addresses partial dependency).
Example of a Table Not in 2NF:
Consider a table where the primary key is a composite key made up of OrderID and ItemID:

OrderID	ItemID	ItemName	CustomerName	Address
1	101	Pen	John Doe	123 Maple St
1	102	Notebook	John Doe	123 Maple St
2	103	Pencil	Jane Smith	456 Oak St
Here, OrderID + ItemID together form the primary key.
The problem is that CustomerName and Address depend only on OrderID, not on ItemID. This is a partial dependency, which violates 2NF.
To convert it to 2NF:
Step 1: Create a separate table for customers:

OrderID	CustomerName	Address
1	John Doe	123 Maple St
2	Jane Smith	456 Oak St
Step 2: Create another table for order details:

OrderID	ItemID	ItemName
1	101	Pen
1	102	Notebook
2	103	Pencil
Now, each non-key attribute depends fully on the primary key (either OrderID or OrderID + ItemID), and there is no partial dependency. This ensures the table is in 2NF.

Summary:
1NF ensures that all values are atomic (no multiple values in a single field).
2NF ensures that all non-key attributes depend on the whole primary key, not just part of it.
Both normal forms help in reducing redundancy and improving the database structure.
