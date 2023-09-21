--THEATER TABLE
CREATE TABLE theater (
	theater_id SERIAL PRIMARY KEY,
	address VARCHAR(50),
	theater_name VARCHAR(20),
	employee_id INTEGER NOT NULL,
	concession_id INTEGER NOT NULL,
	schedule_id INTEGER NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES employees(employee_id),
	FOREIGN KEY (concession_id) REFERENCES concessions(concession_id),
	FOREIGN KEY (schedule_id) REFERENCES movie_schedule(schedule_id)
);

CREATE TABLE tickets( 
	ticket_id SERIAL PRIMARY KEY,
	seat_num VARCHAR(2),
	movie_time INTEGER,
	ticket_price NUMERIC(2, 2),
	movie_id INTEGER NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES availiable_movies(movie_id)
);

CREATE TABLE availiable_movies( 
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(20),
	movie_rating VARCHAR(10)
);

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	fisrt_name VARCHAR(20),
	last_name VARCHAR(20),
	address VARCHAR(50),
	payment_info VARCHAR(50),
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY (ticket_id) REFERENCES tickets(ticket_id)
);

CREATE TABLE movie_schedule(
	schedule_id SERIAL PRIMARY KEY,
	screen_rooms INTEGER,
	movie_times INTEGER,
	movie_id INTEGER NOT NULL,
	FOREIGN KEY (movie_id) REFERENCES availiable_movies(movie_id)
);

CREATE TABLE employees( 
	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20)
);

CREATE TABLE concessions(
 	concession_id SERIAL PRIMARY KEY,
	snack_options VARCHAR(200),
	snack_prices numeric(2, 2)
);