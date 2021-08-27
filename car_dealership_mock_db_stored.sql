-- STORED FUNCTIONS
CREATE OR REPLACE FUNCTION add_sale(_sale_id INTEGER, _sale_date TIMESTAMP, _msrp NUMERIC(10,2), _customer_id INTEGER, _staff_id INTEGER, _car_id INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO "Sale"(sale_id, sale_date, msrp, customer_id, staff_id, car_id)
	VALUES(_sale_id, _sale_date, _msrp, _customer_id, _staff_id, _car_id);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_sale(
	1,
	'20210827 15:30:00',
	'34567.89',
	1,
	1,
	1
);

SELECT add_sale(
	2,
	'20210827 16:30:00',
	'34567.90',
	2,
	1,
	2
);

CREATE OR REPLACE FUNCTION add_invoice(_invoice_id INTEGER, _total_labor NUMERIC, _total_parts NUMERIC, _total_cost NUMERIC, _invoice_paid BOOLEAN, 
									   _car_id INTEGER, _customer_id INTEGER, _service_id INTEGER, _finance_id INTEGER, _sale_id INTEGER)
RETURNS void 
AS $MAIN$
BEGIN
	INSERT INTO "Invoice"(invoice_id, total_labor, total_parts, total_cost, invoice_paid, car_id, customer_id, service_id, finance_id, sale_id)
	VALUES(_invoice_id, _total_labor, _total_parts, _total_cost, _invoice_paid, _car_id, _customer_id, _service_id, _finance_id, _sale_id);
END;
$MAIN$
LANGUAGE plpgsql;

SELECT add_invoice(
	1,
	500,
	200,
	25000.00,
	'True',
	1,
	1,
	1,
	1,
	1
);

SELECT add_invoice(
	2,
	600,
	400,
	55000.00,
	'True',
	2,
	2,
	2,
	1,
	2
);
