--Customer Table Creation
create table customer_carl(
	customer_id SERIAL primary key,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
	);

--Concessions Table Creation
create table concession_carl(
	item_id SERIAL primary key, 
	item_cost NUMERIC(4,2)
	);

--Movies Table Creation
create table movies_carl(
	title_id SERIAL primary key,
	show_time TIME,
	theater INTEGER
	);
	
--Tickets Table Creation
create table tickets_carl(
	ticket_id SERIAL primary key,
	title_id INTEGER not null,
	foreign key(title_id) references movies_carl(title_id)
	);
	
--Order Table Creation
create table order_carl(
	order_id serial primary key,
	order_date date default current_date,
	customer_id integer not null,
	sub_total numeric(3,2),
	total_cost numeric (4,2),
	ticket_id INTEGER not null,
	item_id INTEGER not null,
	foreign key (customer_id) references customer_carl(customer_id),
	foreign key (ticket_id) references tickets_carl(ticket_id),
	foreign key (item_id) references concession_carl(item_id)
	);