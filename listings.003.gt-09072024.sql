CREATE TABLE listings (
    listing_id SERIAL PRIMARY KEY,
    user_id INT REFERENCES users(user_id),
    item_id INT REFERENCES items(item_id),
    price DECIMAL(10, 2), -- In-game currency price
    trade_only BOOLEAN DEFAULT FALSE, -- If this is a trade-only offer
    status VARCHAR(50) DEFAULT 'active', -- active, sold, closed
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);