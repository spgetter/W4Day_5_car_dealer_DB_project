CREATE TABLE "Customer" (
  "customer_id" SERIAL,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address" VARCHAR(150),
  "phone_number" VARCHAR(15),
  "email_address" VARCHAR(50),
  PRIMARY KEY ("customer_id")
);

CREATE TABLE "Car" (
  "car_id" SERIAL,
  "license_number" VARCHAR(8),
  "vin" VARCHAR(20),
  "year_" INTEGER,
  "make" VARCHAR(20),
  "model" VARCHAR(30),
  "color" VARCHAR(20),
  PRIMARY KEY ("car_id")
);

CREATE TABLE "Part" (
  "part_id" SERIAL,
  "part_desc" VARCHAR,
  "part_cost" NUMERIC(7,2),
  PRIMARY KEY ("part_id")
);

CREATE TABLE "Staff" (
  "staff_id" SERIAL,
  "position" VARCHAR(25),
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "address" VARCHAR(150),
  "phone_number" VARCHAR(15),
  "email_address" VARCHAR(50),
  PRIMARY KEY ("staff_id")
);

CREATE TABLE "Shop" (
	"repair_id" SERIAL,
	"labor_cost" NUMERIC(7,2),
	"staff_id" INTEGER,
	"car_id" INTEGER,
	"hours" INTEGER,
	PRIMARY KEY ("repair_id"),
	FOREIGN KEY ("staff_id") REFERENCES "Staff"("staff_id"),
	FOREIGN KEY ("car_id") REFERENCES "Car"("car_id")
);

CREATE TABLE "Service" (
	"service_id" SERIAL,
	"repair_description" VARCHAR,
	"service_date" TIMESTAMP,
	"customer_id" INTEGER,
	"staff_id" INTEGER,
	"car_id" INTEGER,
	"part_id" INTEGER,
	"repair_id" INTEGER,
	PRIMARY KEY ("service_id"),
	FOREIGN KEY ("customer_id") REFERENCES "Customer"("customer_id"),	
	FOREIGN KEY ("staff_id") REFERENCES "Staff"("staff_id"),
	FOREIGN KEY ("car_id") REFERENCES "Car"("car_id"),
	FOREIGN KEY ("part_id") REFERENCES "Part"("part_id"),
	FOREIGN KEY ("repair_id") REFERENCES "Shop"("repair_id")	
);

CREATE TABLE "Sale" (
	"sale_id" SERIAL,
	"sale_date" TIMESTAMP,
	"msrp" NUMERIC(10,2),
	"customer_id" INTEGER,
	"staff_id" INTEGER,
	"car_id" INTEGER,
	PRIMARY KEY ("sale_id"),
	FOREIGN KEY ("customer_id") REFERENCES "Customer"("customer_id"),	
	FOREIGN KEY ("staff_id") REFERENCES "Staff"("staff_id"),
	FOREIGN KEY ("car_id") REFERENCES "Car"("car_id")
);

CREATE TABLE "Inventory" (
	"inventory_id" SERIAL,
	"location" VARCHAR,
	"car_id" INTEGER,
	"part_id" INTEGER,
	PRIMARY KEY ("inventory_id"),
	FOREIGN KEY ("car_id") REFERENCES "Car"("car_id"),
	FOREIGN KEY ("part_id") REFERENCES "Part"("part_id")
);

CREATE TABLE "Finance" (
	"finance_id" SERIAL,
	"credit_score" INTEGER,
	"loan_amount" NUMERIC(7,2),
	"bank_name" VARCHAR(100),
	"routing_number" INTEGER,
	"customer_id" INTEGER,
	"staff_id" INTEGER,
	PRIMARY KEY ("finance_id"),
	FOREIGN KEY ("customer_id") REFERENCES "Customer"("customer_id"),	
	FOREIGN KEY ("staff_id") REFERENCES "Staff"("staff_id")
);

CREATE TABLE "Invoice" (
	"invoice_id" SERIAL,
	"total_labor" NUMERIC(7,2),
	"total_parts" NUMERIC(7,2),
	"total_cost" NUMERIC(7,2),
	"invoice_paid" BOOLEAN,
	"car_id" INTEGER,
	"customer_id" INTEGER,
	"service_id" INTEGER,
	"finance_id" INTEGER,
	"sale_id" INTEGER,
	PRIMARY KEY ("invoice_id"),
	FOREIGN KEY ("car_id") REFERENCES "Car"("car_id"),
	FOREIGN KEY ("customer_id") REFERENCES "Customer"("customer_id"),
	FOREIGN KEY ("service_id") REFERENCES "Service"("service_id"),
	FOREIGN KEY ("finance_id") REFERENCES "Finance"("finance_id"),
	FOREIGN KEY ("sale_id") REFERENCES "Sale"("sale_id")
);

