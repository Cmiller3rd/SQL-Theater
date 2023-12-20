--Add values to Customer Table
insert into customer_carl(
	customer_id,
	first_name,
	last_name
)values(
	1,
	'Bilbo',
	'Baggins'
);
insert into customer_carl(
	customer_id,
	first_name,
	last_name
)values(
	2,
	'Meriadoc',
	'Brandybuck'
);

-- Change Concession Table (fix value types and add more column)
alter table concession_carl
alter column item_cost type NUMERIC(4,2);

alter table concession_carl 
add column item_name VARCHAR(50);

-- Add values to Concessions Table
insert into concession_carl(
	item_id,
	item_cost,
)values(
	1,
	5.75,
);

insert into concession_carl(
	item_id,
	item_cost
)values(
	2,
	3.25,
);

-- Modify Concession Table (adding values and cleaning rows)
update concession_carl
set item_name = 'popcorn'
where item_id = 1;

update concession_carl
set item_name = 'soda'
where item_id = 2;

delete from concession_carl
where item_id = 3;

update concession_carl 
set item_cost = 3.25
where item_id = 2;

select * from concession_carl;

-- Change Movies Table (add columnn for additional data)
alter table movies_carl 
add column movie_title VARCHAR(150);

-- Add values to Movies Table
insert into movies_carl(
	title_id,
	show_time,
	theater,
	movie_title
)VALUES(
	1,
	'2:20',
	5,
	'Black Panther'	
);

insert into movies_carl(
	title_id,
	show_time,
	theater,
	movie_title
)values(
	2,
	'3:45',
	1,
	'Avengers: Infinity War'
);

-- Add values to Tickets Table
insert into tickets_carl(
	ticket_id,
	title_id
)VALUES(
	1,
	1
);

insert into tickets_carl(
	ticket_id,
	title_id
)values(
	2,
	2
);

-- Change Order Table (fix value types and add additional data)
alter table order_carl
alter column sub_total type NUMERIC(4,2),
alter column total_cost type NUMERIC(5,2);

-- Add values to Order Table
insert into order_carl(
	order_id,
	order_date,
	customer_id,
	sub_total,
	total_cost,
	ticket_id,
	item_id
)VALUES(
	1,
	'2023-12-14',
	1,
	35.00,
	43.75,
	1,
	1
);

insert into order_carl(
	order_id,
	order_date,
	customer_id,
	sub_total,
	total_cost,
	ticket_id,
	item_id
)values(
	2,
	'2023-12-20',
	2,
	58.63,
	105.30,
	2,
	2
);