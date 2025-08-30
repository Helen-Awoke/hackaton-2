CREATE TABLE IF NOT EXISTS recipes (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    ingredients TEXT NOT NULL,
    calories INTEGER,
    image_url TEXT,
    steps TEXT
);

-- Sample recipes with steps
INSERT INTO recipes (name, ingredients, calories, image_url, steps) VALUES
('Spaghetti Bolognese', 'spaghetti,beef,tomato', 650, 'https://via.placeholder.com/300?text=Spaghetti+Bolognese',
'Boil spaghetti|Cook beef until brown|Add tomato sauce|Mix spaghetti with sauce and serve'),

('Avocado Toast', 'bread,avocado', 250, 'https://via.placeholder.com/300?text=Avocado+Toast',
'Toast the bread|Mash avocado|Spread avocado on toast|Add salt and pepper to taste'),

('Chicken Salad', 'chicken,lettuce,tomato', 400, 'https://via.placeholder.com/300?text=Chicken+Salad',
'Cook chicken and slice|Chop lettuce and tomato|Mix all ingredients|Add dressing and serve'),

('Omelette', 'egg,onion,oil', 300, 'https://via.placeholder.com/300?text=Omelette',
'Beat eggs|Chop onion|Heat oil in pan|Pour eggs and onion into pan|Cook until set'),

('Pancakes', 'flour,milk,egg', 350, 'https://via.placeholder.com/300?text=Pancakes',
'Mix flour, milk, and egg to make batter|Heat pan and pour batter|Cook until bubbles form|Flip and cook other side|Serve with syrup'),

('Grilled Cheese', 'bread,cheese,butter', 400, 'https://via.placeholder.com/300?text=Grilled+Cheese',
'Butter the bread|Place cheese between slices|Grill until golden brown'),

('Fruit Smoothie', 'banana,strawberry,milk', 200, 'https://via.placeholder.com/300?text=Fruit+Smoothie',
'Chop fruit|Add fruit and milk to blender|Blend until smooth|Pour into glass'),

('Beef Stir Fry', 'beef,broccoli,soy sauce', 550, 'https://via.placeholder.com/300?text=Beef+Stir+Fry',
'Slice beef and broccoli|Heat oil in pan|Add beef and cook|Add broccoli|Pour soy sauce and stir fry|Serve hot'),

('Tomato Soup', 'tomato,cream,onion', 180, 'https://via.placeholder.com/300?text=Tomato+Soup',
'Chop tomatoes and onion|Cook onion until soft|Add tomatoes and water|Simmer until soft|Blend and add cream|Serve warm'),

('Caesar Salad', 'lettuce,chicken,croutons', 320, 'https://via.placeholder.com/300?text=Caesar+Salad',
'Chop lettuce|Cook and slice chicken|Mix lettuce, chicken, and croutons|Add dressing|Serve chilled');