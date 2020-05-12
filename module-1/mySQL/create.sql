USE lab_mysql;
CREATE TABLE IF NOT EXISTS cars (
	car_id 			INT AUTO_INCREMENT PRIMARY KEY,
    vin 			VARCHAR(30),
    manufacturer 	VARCHAR(30),
    model 			VARCHAR(30),
    production_year INT,
    colour 			VARCHAR(30)
);

CREATE TABLE IF NOT EXISTS customers (
	cust_id 		INT AUTO_INCREMENT PRIMARY KEY, 
    customer_id 	VARCHAR(30),
    customer_name	VARCHAR(100),
    phone_number	VARCHAR(20),
    email			VARCHAR(100),
    address			VARCHAR(100),
    city			VARCHAR(60),
    state_province	VARCHAR(60),
    country			VARCHAR(60),
    postcode		VARCHAR(20)
);

CREATE TABLE IF NOT EXISTS salespersons (
	sales_id		INT AUTO_INCREMENT PRIMARY KEY,
    staff_id		VARCHAR(30),
    staff_name		VARCHAR(100),
    store			VARCHAR(60)
);

Create TABLE IF NOT EXISTS invoices (
	id 				INT AUTO_INCREMENT PRIMARY KEY,
    invoice_no		VARCHAR(30),
    invoice_date	DATE,
    car_id			INT NOT NULL,
    cust_id			INT NOT NULL,
    sales_id		INT NOT NULL
);