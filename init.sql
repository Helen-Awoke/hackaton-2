
-- Create recipes table
CREATE TABLE IF NOT EXISTS recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    ingredients TEXT NOT NULL,
    calories INTEGER,
    image_url TEXT
);

-- Insert sample recipes
INSERT INTO recipes (name, ingredients, calories, image_url) VALUES
('Spaghetti Bolognese', 'spaghetti,beef,tomato', 650, 'https://via.placeholder.com/300?text=Spaghetti+Bolognese'),
('Avocado Toast', 'bread,avocado', 250, 'https://via.placeholder.com/300?text=Avocado+Toast'),
('Chicken Salad', 'chicken,lettuce,tomato', 400, 'https://via.placeholder.com/300?text=Chicken+Salad'),
('Omelette', 'egg,onion,oil', 300, 'https://via.placeholder.com/300?text=Omelette'),
('Pancakes', 'flour,milk,egg', 350, 'https://via.placeholder.com/300?text=Pancakes');
