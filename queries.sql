-- Top 3 most expensive products with stock above 20
SELECT name, price, stock
FROM products
WHERE stock > 20
ORDER BY price DESC
LIMIT 3;

-- Top 3 cheapest products with stock of at least 30
SELECT name, price, stock
FROM products
WHERE stock >= 30
ORDER BY price ASC
LIMIT 3;