CREATE TABLE IF NOT EXISTS users(
    id SERIAL PRIMARY KEY,
    firstname TEXT NOT NULL,
    lastname TEXT NOT NULL,
    email TEXT NOT NULL,
    address TEXT NOT NULL,
    add_date DATE DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS phones(
    id SERIAL PRIMARY KEY,
    model TEXT NOT NULL,
    user_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);