CREATE TABLE trades (
    trade_id SERIAL PRIMARY KEY,
    seller_id INT REFERENCES users(user_id),
    buyer_id INT REFERENCES users(user_id),
    listing_id INT REFERENCES listings(listing_id),
    status VARCHAR(50) DEFAULT 'pending', -- pending, completed, cancelled
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);