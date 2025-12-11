-- Insert sample data
BEGIN;


-- Insert sample users
INSERT INTO "lost-and-found-item-db-schema"."user" (id, name, email, role) VALUES
(1, 'John Smith', 'john.smith@email.com', 'student'),
(2, 'Sarah Johnson', 'sarah.j@email.com', 'student'),
(3, 'Mike Wilson', 'mike.w@email.com', 'staff'),
(4, 'Emily Brown', 'emily.b@email.com', 'student'),
(5, 'David Chen', 'david.chen@email.com', 'staff');

-- Insert sample item categories
INSERT INTO "lost-and-found-item-db-schema".item_category (id, name, description) VALUES
(1, 'Electronics', 'Phones, laptops, tablets, and other electronic devices'),
(2, 'Personal Items', 'Wallets, keys, ID cards, and personal belongings'),
(3, 'Clothing', 'Jackets, hats, scarves, and other wearable items'),
(4, 'Bags', 'Backpacks, purses, briefcases, and luggage'),
(5, 'Accessories', 'Jewelry, watches, glasses, and other accessories');

-- Insert sample lost reports (each with unique category_id due to UNIQUE constraint)
INSERT INTO "lost-and-found-item-db-schema".lost_report (id, user_id, category_id, item_name, description, lost_date, lost_location, status, created_at) VALUES
(1, 1, 1, 'iPhone 13 Pro', 'Black iPhone with a blue case, has a small scratch on the screen', '2024-12-08', 'Library 3rd floor', 'stored', '2024-12-08'),
(2, 2, 2, 'Brown Leather Wallet', 'Brown leather wallet containing ID and credit cards', '2024-12-07', 'Student Center cafeteria', 'stored', '2024-12-07'),
(3, 4, 3, 'Red Winter Jacket', 'North Face red puffer jacket, size medium', '2024-12-06', 'Gym locker room', 'stored', '2024-12-06');

-- Insert sample found reports (each with unique category_id due to UNIQUE constraint)
INSERT INTO "lost-and-found-item-db-schema".found_report (id, staff_id, category_id, item_name, description, found_date, found_location, status, created_at) VALUES
(1, 3, 1, 'iPhone with Blue Case', 'Black iPhone found with blue protective case', '2024-12-08', 'Library 3rd floor study area', 'stored', '2024-12-08'),
(2, 5, 2, 'Wallet', 'Brown leather wallet found with various cards inside', '2024-12-07', 'Student Center', 'stored', '2024-12-07'),
(3, 3, 3, 'Red Jacket', 'Red winter jacket, North Face brand', '2024-12-06', 'Gym', 'stored', '2024-12-06'),
(4, 5, 4, 'Blue Backpack', 'Blue Adidas backpack with textbooks', '2024-12-09', 'Lecture Hall 201', 'stored', '2024-12-09'),
(5, 3, 5, 'Sunglasses', 'Ray-Ban aviator sunglasses in black case', '2024-12-10', 'Main building entrance', 'stored', '2024-12-10');

-- Insert sample matches (each with unique lost_id and found_id due to UNIQUE constraints)
INSERT INTO "lost-and-found-item-db-schema".match (id, lost_id, found_id, score, date, status) VALUES
(1, 1, 1, 95, '2024-12-08', 'confirmed'),
(2, 2, 2, 90, '2024-12-07', 'confirmed'),
(3, 3, 3, 88, '2024-12-06', 'pending');

-- Insert sample claims (each with unique user_id and found_id due to UNIQUE constraints)
INSERT INTO "lost-and-found-item-db-schema".claim (id, found_id, user_id, claim_date, status) VALUES
(1, 1, 1, '2024-12-08', 'approved'),
(2, 2, 2, '2024-12-07', 'approved'),
(3, 3, 4, '2024-12-06', 'pending');

END;