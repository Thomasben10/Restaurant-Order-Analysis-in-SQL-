USE restaurant_db;

-- Viewing the menu_items table.

SELECT * 
FROM menu_items;

-- Finding the number of items on the menu.

SELECT COUNT(*) AS num_items_menu
FROM menu_items;

-- Finding  the least and most expensive items on the menu.

SELECT * 
FROM menu_items
ORDER BY price;

SELECT * 
FROM menu_items
ORDER BY price DESC;

-- Finding the number of italian dishes on the menu.

SELECT COUNT(*) AS num_Italian_dishes
FROM menu_items
WHERE category = 'Italian'; 

-- Finding the least and most expensive italian dishes on the menu

SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price;

SELECT * 
FROM menu_items
WHERE category = 'Italian'
ORDER BY price DESC;

-- Finding the number of dishes in each category.

SELECT category, COUNT(menu_item_id) AS num_dishes
FROM menu_items
GROUP BY category;

-- Finding the average dish price within each category.

SELECT category, AVG(price) AS Avg_dishes
FROM menu_items
GROUP BY category;


