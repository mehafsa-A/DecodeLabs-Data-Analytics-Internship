SELECT * FROM orders;

SELECT COUNT(*) AS total_orders 
FROM orders;

SELECT * FROM orders 
LIMIT 10;

SELECT DISTINCT product 
FROM orders;

SELECT DISTINCT orderstatus 
FROM orders;

SELECT * FROM orders 
WHERE orderstatus = 'Delivered';

SELECT * FROM orders 
WHERE product = 'Laptop';

SELECT orderid, product, totalprice 
FROM orders 
WHERE totalprice > 1000;

SELECT orderid, product, totalprice 
FROM orders 
WHERE totalprice BETWEEN 500 AND 2000;

SELECT * FROM orders 
WHERE product = 'Laptop' 
AND orderstatus = 'Cancelled';

SELECT * FROM orders 
WHERE paymentmethod = 'Cash' 
OR paymentmethod = 'Online';

SELECT * FROM orders 
WHERE referralsource = 'Instagram' 
OR referralsource = 'Email';

SELECT orderid, product, totalprice 
FROM orders 
ORDER BY totalprice DESC;

SELECT orderid, product, totalprice 
FROM orders 
ORDER BY totalprice ASC;

SELECT orderid, date, product, totalprice 
FROM orders 
ORDER BY date DESC;

SELECT orderid, product, totalprice 
FROM orders 
ORDER BY totalprice DESC 
LIMIT 10;

SELECT orderid, date, product 
FROM orders 
ORDER BY date DESC 
LIMIT 5;

SELECT product, 
       COUNT(*) AS number_of_orders 
FROM orders 
GROUP BY product 
ORDER BY number_of_orders DESC;

SELECT orderstatus, 
       COUNT(*) AS number_of_orders 
FROM orders 
GROUP BY orderstatus 
ORDER BY number_of_orders DESC;

SELECT paymentmethod, 
       COUNT(*) AS number_of_orders 
FROM orders 
GROUP BY paymentmethod 
ORDER BY number_of_orders DESC;

SELECT referralsource, 
       COUNT(*) AS number_of_orders 
FROM orders 
GROUP BY referralsource 
ORDER BY number_of_orders DESC;

SELECT couponcode, 
       COUNT(*) AS number_of_orders 
FROM orders 
GROUP BY couponcode 
ORDER BY number_of_orders DESC;

SELECT SUM(totalprice) AS total_revenue 
FROM orders;

SELECT AVG(totalprice) AS average_order_value 
FROM orders;

SELECT product, 
       SUM(totalprice) AS total_revenue,
       COUNT(*) AS number_of_orders,
       AVG(totalprice) AS avg_order_value
FROM orders 
GROUP BY product 
ORDER BY total_revenue DESC;

SELECT orderstatus,
       COUNT(*) AS number_of_orders,
       SUM(totalprice) AS total_revenue
FROM orders 
GROUP BY orderstatus 
ORDER BY total_revenue DESC;

SELECT paymentmethod,
       COUNT(*) AS number_of_orders,
       SUM(totalprice) AS total_revenue,
       AVG(totalprice) AS avg_order_value
FROM orders 
GROUP BY paymentmethod 
ORDER BY total_revenue DESC;

SELECT referralsource,
       COUNT(*) AS number_of_orders,
       SUM(totalprice) AS total_revenue
FROM orders 
GROUP BY referralsource 
ORDER BY total_revenue DESC;

SELECT MIN(totalprice) AS minimum_order,
       MAX(totalprice) AS maximum_order,
       AVG(totalprice) AS average_order
FROM orders;

SELECT orderid, product, totalprice, orderstatus 
FROM orders 
WHERE orderstatus = 'Delivered' 
AND totalprice > 1000
ORDER BY totalprice DESC;

SELECT orderid, product, totalprice, orderstatus 
FROM orders 
WHERE totalprice > 3330
ORDER BY totalprice DESC;

SELECT couponcode,
       COUNT(*) AS number_of_orders,
       SUM(totalprice) AS total_revenue
FROM orders 
WHERE couponcode != 'No Coupon'
GROUP BY couponcode
ORDER BY number_of_orders DESC;

SELECT SUM(totalprice) AS lost_revenue,
       COUNT(*) AS cancelled_orders
FROM orders 
WHERE orderstatus = 'Cancelled';

SELECT 
    COUNT(*) AS total_orders,
    SUM(totalprice) AS total_revenue,
    AVG(totalprice) AS avg_order_value,
    MIN(totalprice) AS min_order,
    MAX(totalprice) AS max_order,
    AVG(quantity) AS avg_quantity,
    AVG(itemsincart) AS avg_items_in_cart
FROM orders;

SELECT product,
       COUNT(*) AS number_of_orders,
       ROUND(COUNT(*) * 100.0 / 1200, 2) AS percentage
FROM orders
GROUP BY product
ORDER BY number_of_orders DESC;