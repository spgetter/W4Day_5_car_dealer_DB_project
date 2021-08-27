-- INSERTS
INSERT INTO "Customer"(
	customer_id,
	first_name,
	last_name,
	address,
	phone_number,
	email_address
)VALUES(
	1,
	'Bob',
	'Smith',
	'123 Big Street Denver,CO 80222',
	'888-555-1234',
	'bjones@gmail.com'
);

INSERT INTO "Customer"(
	customer_id,
	first_name,
	last_name,
	address,
	phone_number,
	email_address
)VALUES(
	2,
	'Barry',
	'Smythe',
	'1245 Go Street Ave. Denver, CO 80222',
	'888-555-1235',
	'bsmythe@gmail.com'
);

INSERT INTO "Car"(
	car_id,
	license_number,
	vin,
	year_,
	make,
	model,
	color
)VALUES(
	1,
	'DDD123',
	'ASDFG09876543F54321',
	2020,
	'Subaru',
	'Legacy',
	'green'
);

INSERT INTO "Car"(
	car_id,
	license_number,
	vin,
	year_,
	make,
	model,
	color
)VALUES(
	2,
	'AAA321',
	'ASDFH09876543F54322',
	2021,
	'Mazda',
	'3',
	'purple'
);

INSERT INTO "Staff"(
	staff_id,
	position,
	first_name,
	last_name,
	address,
	phone_number,
	email_address
)VALUES(
	1,
	'Salesperson',
	'Joe Bob',
	'Duncan',
	'999 Middle 8 Drive, Carlton, GA, 40532',
	'888-555-1236',
	'BobbyJoe@yahoo_aol.com'
);

INSERT INTO "Staff"(
	staff_id,
	position,
	first_name,
	last_name,
	address,
	phone_number,
	email_address
)VALUES(
	2,
	'Mechanic',
	'Howie',
	'Masterson',
	'888 Left 7th Blvd, Charlotte, NC, 20532',
	'888-555-1237',
	'HMasters@google.com'
);

INSERT INTO "Finance"(
	finance_id,
	staff_id,
	customer_id,
	credit_score,
	loan_amount,
	bank_name,
	routing_number
)VALUES(
	1,
	1,
	1,
	689,
	34567.89,
	'First Last Bank Of Pegosa Springs',
	000111222
);

INSERT INTO "Finance"(
	finance_id,
	staff_id,
	customer_id,
	credit_score,
	loan_amount,
	bank_name,
	routing_number
)VALUES(
	2,
	2,
	1,
	689,
	34567.89,
	'First Last Bank Of Pegosa Springs',
	000111222
);

INSERT INTO "Part" (
	part_id,
	part_desc,
	part_cost
)VALUES(
	1,
	'clutch',
	650.00
);

INSERT INTO "Part" (
	part_id,
	part_desc,
	part_cost
)VALUES(
	2,
	'glove compartment button',
	950.00
);

INSERT INTO "Shop"(
	repair_id,
	labor_cost,
	staff_id,
	car_id,
	hours
)VALUES(
	1,
	125.00,
	2,
	1,
	3
);

INSERT INTO "Shop"(
	repair_id,
	labor_cost,
	staff_id,
	car_id,
	hours
)VALUES(
	2,
	125.00,
	2,
	2,
	4
);

INSERT INTO "Service"(
	service_id,
	repair_description,
	service_date,
	customer_id,
	staff_id,
	car_id,
	part_id,
	repair_id
)VALUES(	
	1,
	'Replace clutch',
	'20210827 14:30:00',
	1,
	2,
	1,
	1,
	1
);

INSERT INTO "Service"(
	service_id,
	repair_description,
	service_date,
	customer_id,
	staff_id,
	car_id,
	part_id,
	repair_id
)VALUES(	
	2,
	'Replace glove compartment button',
	'20210827 14:31:00',
	2,
	2,
	2,
	2,
	2
);

INSERT INTO "Inventory"(
	inventory_id,
	location,
	car_id,
	part_id
)VALUES(
	1,
	'back 40',
	1,
	1
);

INSERT INTO "Inventory"(
	inventory_id,
	location,
	car_id
)VALUES(
	2,
	'service area',
	2
);

