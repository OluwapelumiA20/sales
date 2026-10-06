USE mta;

# CLASS PROJECT
# Business case
#A retail store has been selling different kinds of products through both online and retail channels. The business also has both new and returning customers.
# The management team wants to better understand how the business is performing by analyzing its sales data. They want to discover important patterns, customer behavior, top performing products, and areas where the business can improve.

# view 5 records
SELECT *
FROM furniture
LIMIT 5;

# view data structure
DESCRIBE furniture;

# check for duplicate
SELECT *,
COUNT(*) AS duplicate_value
FROM furniture
GROUP BY Product, Sales_rep, Region, Customer, Date, Unit_price, Quantity, Total_sales
HAVING COUNT(*) >1;

# business case 1
SELECT format(sum(Total_sales), 2) AS revenue
FROM furniture;

SELECT format(sum(quantity), 0) AS quantity_sold
FROM furniture;

# business case 2
SELECT product,
format(sum(quantity), 0) AS quantity_sold
FROM furniture
GROUP BY product
ORDER BY quantity_sold DESC;

# business case 3
# no field for profit

# business case 4
SELECT year(date) AS year,
format(sum(Total_sales), 2) AS revenue
FROM furniture
GROUP BY year(date)
ORDER BY revenue DESC;

# business case 5
SELECT year(date) AS year,
count(customer) AS customer
FROM furniture
GROUP BY year(date)
ORDER BY customer DESC;

# business case 6
SELECT region,
format(sum(quantity), 0) AS quantity_sold
FROM furniture
GROUP BY region
ORDER BY quantity_sold DESC;

# business case 7
#  no field for sales channel

# business case 8
SELECT sales_rep,
SUM(quantity) AS quantity_sold
FROM furniture
GROUP BY sales_rep
ORDER BY quantity_sold DESC;

# business case 9
# no field for payment method.ALTER


# Data limitation
# the data had missing field such as payment method, sales channels, profit etc.