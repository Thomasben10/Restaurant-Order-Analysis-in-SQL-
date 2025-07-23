-- Viewing the order_details table 

SELECT *
FROM order_details;

-- Finding the date range of the table

SELECT MIN(order_date) AS min_order_date, MAX(order_date) AS max_order_date
FROM order_details;

-- Finding the number of orders  made within the date range 

SELECT COUNT(DISTINCT order_id) AS num_order_date_range
FROM order_details;

-- Finding the number of items ordered within this date range 

SELECT COUNT(*) AS num_items_ordered
FROM order_details;

-- Finding the orders that had the most number of items

SELECT 
    order_id, COUNT(item_id) AS num_items
FROM
    order_details
GROUP BY order_id
ORDER BY num_items DESC;

-- Finding the number of  orders that had more than 12 items 

SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12;

SELECT COUNT(*) AS total_num_items
FROM
(SELECT order_id, COUNT(item_id) AS num_items
FROM order_details
GROUP BY order_id
HAVING num_items > 12) AS num_order;
