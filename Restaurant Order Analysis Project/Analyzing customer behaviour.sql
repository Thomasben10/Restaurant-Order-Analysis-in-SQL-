-- Combinind the menu_items table and order_details table into a single table 

SELECT * 
FROM menu_items;

SELECT *
FROM order_details;

SELECT *
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id;

-- Finding the least and most ordered items and the categories they belong to 

SELECT item_name, category, COUNT(order_details_id) AS num_purchase 
FROM order_details od
LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
    GROUP BY item_name, category
    ORDER BY num_purchase DESC;
    
-- Finding the top 5 orders that spent the most money

SELECT order_id, SUM(price) AS total_spend
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
GROUP BY order_id 
ORDER BY total_spend DESC
LIMIT 5;     

-- Viewing the details of the highest spend order and the insight that can be  gathered from the results

SELECT category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id = 440
GROUP BY category;    

-- Viewing the details of the top 5 highest orders and the insight gathered from the results 

SELECT order_id, category, COUNT(item_id) AS num_items
FROM order_details od LEFT JOIN menu_items mi
	ON od.item_id = mi.menu_item_id
WHERE order_id IN (440, 2075, 1957, 330, 2675)
GROUP BY order_id, category;layoffs

