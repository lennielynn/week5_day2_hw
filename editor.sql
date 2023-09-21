INSERT INTO theater(
	employee_id,
	cocession_id,
    theater_name,
    address
     )
VALUES(
	'1',
	'1',
     'CINEMARK THEATER',
     '123 FAKE ST BLUFFTON, SC, 53421'
);

INSERT INTO tickets(
	movie_time,
	seat_num,
	ticket_price
	)
values(
	'8pm',
	'E3'
	'11.99'
);

INSERT INTO availiable_movies(
	movie_name,
	movie_rating,
	run_time
	)
VALUES
	('Pride and Prejudice','PG', '2hr 7min'),
	('la la land', 'PG-13', '2hr 8min'),
	('Braveheart','R','2hr 58min');

ALTER TABLE availiable_movies ADD COLUMN run_time VARCHAR(50)


INSERT INTO customer(
	customer_id,
	fisrt_name,
	last_name,
	address,
	payment_info
	)
values('Jimmy','Page','jimmyp@guitar.com','1232 4568 7896'),('John','Bonham','johnbon@drummerboy.com','1236 8498 0753'),
('John Paul','Jones','jojbassman@lzepplin.com','1435 4562 8688'),('Robert','Plant','robertp@ham0nican.com','4568 9605 2483');

INSERT INTO movie_schedule(
	movie_id,
	screen_rooms,
	movie_start,
	movie_end
	)	
VALUES(
	'21',
	'8pm',
	'10pm'
);

ALTER TABLE movie_schedule DROP COLUMN movie_times;
ALTER TABLE movie_schedule ADD COLUMN movie_start VARCHAR(100);
ALTER TABLE movie_schedule ADD COLUMN movie_end VARCHAR(100);
	
INSERT INTO employees(
	first_name,
	last_name
	)
VALUES(
	'Van',
	'Halen'
);

INSERT INTO concessions(
	snack_options,
	snack_prices
)
VALUES 
	('Large Popcorn', 5.00),
	('Medium Popcorn',4.00),
	('Small Popcorn', 3.00),
	('Kids Box', 8.00),
	('Large Drink', 4.00),
	('Small Drink', 2.00),
	('Icee', 3.00),
	('Sour Patch Kids', 2.00),
	('Snickers', 2.00),
	('Twix', 2.00),
	('Milky Way', 2.00),
	('Hot Dog', 6.00),
	('Chicken Strips', 6.00);
