-- ======= product ======= 

CREATE TABLE products (
	column1 int4 NULL,
	product_id varchar(50) NOT NULL,
	product_category_name varchar(50) NULL,
	product_name_lenght float8 NULL,
	product_description_lenght float8 NULL,
	product_photos_qty float8 NULL,
	product_weight_g float8 NULL,
	product_length_cm float8 NULL,
	product_height_cm float8 NULL,
	product_width_cm float8 NULL,
	CONSTRAINT products_pk PRIMARY KEY (product_id)
);

-- ======= order_payment ======= 

CREATE TABLE order_payments (
	order_id varchar(50) NULL,
	payment_sequential int4 NULL,
	payment_type varchar(50) NULL,
	payment_installments int4 NULL,
	payment_value float8 NULL
);

-- ======= order_reviews ======= 

CREATE TABLE order_reviews (
	review_id varchar(100) NULL,
	order_id varchar(100) NULL,
	review_score int4 NULL,
	review_comment_title varchar(100) NULL,
	review_comment_message varchar(400) NULL,
	review_creation_date timestamp NULL,
	review_answer_timestamp timestamp NULL
);

-- ======= orders ======= 

CREATE TABLE orders (
	order_id varchar(50) NOT NULL,
	customer_id varchar(50) NULL,
	order_status varchar(50) NULL,
	order_purchase_timestamp timestamp NULL,
	order_approved_at timestamp NULL,
	order_delivered_carrier_date timestamp NULL,
	order_delivered_customer_date timestamp NULL,
	order_estimated_delivery_date timestamp NULL,
	CONSTRAINT orders_pk PRIMARY KEY (order_id)
);

-- ======= customers ======= 

CREATE TABLE customers (
	customer_id varchar(50) NOT NULL,
	customer_unique_id varchar(50) NULL,
	customer_zip_code_prefix varchar(50) NULL,
	customer_city varchar(50) NULL,
	customer_state varchar(50) NULL,
	CONSTRAINT customers_pk PRIMARY KEY (customer_id)
);

-- ======= geolocation (dirty) ======= 

CREATE TABLE geolocation_dirty (
	geolocation_zip_code_prefix varchar(50) NULL,
	geolocation_lat float8 NULL,
	geolocation_lng float8 NULL,
	geolocation_city varchar(50) NULL,
	geolocation_state varchar(50) NULL
);

-- ======= seller ======= 

CREATE TABLE sellers (
	seller_id varchar(50) NOT NULL,
	seller_zip_code_prefix varchar(50) NULL,
	seller_city varchar(50) NULL,
	seller_state varchar(50) NULL,
	CONSTRAINT sellers_pk PRIMARY KEY (seller_id)
);

-- ======= order_items ======= 

CREATE TABLE order_items (
	order_id varchar(50) NULL,
	order_item_id int4 NULL,
	product_id varchar(50) NULL,
	seller_id varchar(50) NULL,
	shipping_limit_date timestamp NULL,
	price float8 NULL,
	freight_value float8 NULL
);