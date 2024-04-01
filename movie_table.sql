CREATE TABLE customers(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(25),
	last_name VARCHAR(25)
);

CREATE TABLE movies(
	movie_id SERIAL PRIMARY KEY,
	title VARCHAR NOT NULL,
);

CREATE TABLE tickets(
ticket_id SERIAL PRIMARY KEY,
price numeric NOT NULL,
date_created TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
movie_id INTEGER NOT NULL,
FOREIGN KEY(movie_id) REFERENCES movies(movie_id),
customer_id INTEGER NOT NULL,
FOREIGN KEY(customer_id) REFERENCES customers(customer_id) 
);