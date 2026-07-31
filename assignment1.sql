-- Databricks notebook source
replace table Customers(
    Customer_id INT,
    Customer_name STRING,
    City STRING,
    AccountType STRING,
    Balance INT,
    Loan_amount INT
    );
    insert into Customers values
    (101,'John','Dallas','Savings',5000,10000),
    (102,'Mary','Austin','Current',2500,5000),
    (103,'David','Dallas','Savings',8000,0),
    (104,'Emma','Houston','Savings',1500,3000),
    (105,'Alex','Austin','Current',7000,12000),
    (106,'Sophia','Dallas','Savings',5000,8000);

    select * from Customers;

    

-- COMMAND ----------

select Customer_name, City, Balance, Loan_amount 
    from customers;

   

-- COMMAND ----------


    select DISTINCT City 
    from Customers;

   

-- COMMAND ----------

 select * from customers
    ORDER BY Loan_amount DESC;

   

-- COMMAND ----------

 select * from customers
    ORDER BY Loan_amount DESC
    LIMIT 5;

    

-- COMMAND ----------



    select 
    COUNT(*) AS Total_Customers
    from Customers;

   

-- COMMAND ----------

 select
    SUM(Loan_amount) AS Total_Loan_amount
    from Customers;

    

-- COMMAND ----------



    select
    MIN(Balance) AS Minimum_Balance
    from Customers;

    

-- COMMAND ----------

select
    MAX(Balance) AS Maximim_Balance
    from Customers;
    
   

-- COMMAND ----------

 select
    AVG(Balance) AS Average_Balance
    from Customers;