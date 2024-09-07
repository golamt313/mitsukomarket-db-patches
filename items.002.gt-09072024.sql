CREATE TABLE items (
    item_id SERIAL PRIMARY KEY,
    item_name VARCHAR(255) NOT NULL,
    item_description TEXT,
    item_type VARCHAR(50), -- e.g., weapon, armor, consumable
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);