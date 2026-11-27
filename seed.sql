INSERT INTO users (name, email)
VALUES
    ('Diandra Tirtadjaja', 'dee_andra@example.com'),
    ('Wayan Ardhika', 'bli.wardhika@example.com'),
    ('Mario Tumbelaka', 'tumbelakamario@example.com'),
    ('Melky Pattinasarany', 'melky.patti@example.com'),
    ('Devina Kambuaya', 'nonadevina@example.com');

INSERT INTO categories (name, description)
VALUES
    ('Fashion', 'Comfy and stylish outfits for daily activities'),
    ('Food & Beverages', 'Grab and go for a happy tummy'),
    ('Personal Care', 'Pamper yourself from head to toe'),
    ('Computers & Gadgets', 'Stay connected in multi devices');

INSERT INTO products (category_id, name, description, price, stock)
VALUES
    ((SELECT id FROM categories WHERE name = 'Fashion'), 'Fleece Pashmina', 'Warmth and elegance all in one piece', 235000, 30),
    ((SELECT id FROM categories WHERE name = 'Fashion'), 'Grip Socks', 'Comfortable and safe for your pilates session', 99000, 50),
    ((SELECT id FROM categories WHERE name = 'Food & Beverages'), 'Chunky-bites Frozen Banana', 'Healthy snacks to be shared with beloved ones', 119000, 25),
    ((SELECT id FROM categories WHERE name = 'Food & Beverages'), 'Shake-shake Protein Yoghurt', 'Get your lean body goals in the yummiest way', 30000, 80),
    ((SELECT id FROM categories WHERE name = 'Food & Beverages'), 'Tempe Truffle Chips', 'Traditional snacks with modern taste', 40500, 85),
    ((SELECT id FROM categories WHERE name = 'Personal Care'), 'Sunshield Mist', 'Protect your skin from UVA and UVB rays', 315000, 50),
    ((SELECT id FROM categories WHERE name = 'Personal Care'), 'Gel Facial Wash', 'Gentle for your sensitive skin barrier', 94900, 50),
    ((SELECT id FROM categories WHERE name = 'Computers & Gadgets'), 'Smartphone Cooling Fan', 'No more overheating worries', 176300, 15);

INSERT INTO orders (user_id, total, status)
VALUES
    ((SELECT id FROM users WHERE email = 'dee_andra@example.com'), 316000, 'delivered'),
    ((SELECT id FROM users WHERE email = 'bli.wardhika@example.com'), 271200, 'shipped'),
    ((SELECT id FROM users WHERE email = 'tumbelakamario@example.com'), 388000, 'delivered'),
    ((SELECT id FROM users WHERE email = 'melky.patti@example.com'), 667600, 'pending'),
    ((SELECT id FROM users WHERE email = 'nonadevina@example.com'), 513000, 'shipped');

INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'dee_andra@example.com')),
     (SELECT id FROM products WHERE name = 'Fleece Pashmina'),
     1, 235000),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'dee_andra@example.com')),
     (SELECT id FROM products WHERE name = 'Tempe Truffle Chips'),
     2, 40500),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'bli.wardhika@example.com')),
     (SELECT id FROM products WHERE name = 'Smartphone Cooling Fan'),
     1, 176300),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'bli.wardhika@example.com')),
     (SELECT id FROM products WHERE name = 'Gel Facial Wash'),
     1, 94900),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'tumbelakamario@example.com')),
     (SELECT id FROM products WHERE name = 'Shake-shake Protein Yoghurt'),
     5, 30000),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'tumbelakamario@example.com')),
     (SELECT id FROM products WHERE name = 'Chunky-bites Frozen Banana'),
     2, 119000),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'melky.patti@example.com')),
     (SELECT id FROM products WHERE name = 'Smartphone Cooling Fan'),
     2, 176300),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'melky.patti@example.com')),
     (SELECT id FROM products WHERE name = 'Sunshield Mist'),
     1, 315000),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'nonadevina@example.com')),
     (SELECT id FROM products WHERE name = 'Sunshield Mist'),
     1, 315000),
    ((SELECT id FROM orders WHERE user_id = (SELECT id FROM users WHERE email = 'nonadevina@example.com')),
     (SELECT id FROM products WHERE name = 'Grip Socks'),
     2, 99000);