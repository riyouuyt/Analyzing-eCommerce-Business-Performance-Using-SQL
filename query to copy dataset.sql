-- =============== 2. Import Datasets =============== 

-- ======= product ======= 

COPY products FROM
'C:\Downloads\Dataset\product_dataset.csv'
DELIMITER ','
CSV HEADER;

ALTER TABLE products DROP COLUMN column1;

-- ======= order_payment ======= 

COPY order_payments FROM
'C:\Downloads\Dataset\order_payments_dataset.csv'
DELIMITER ','
CSV HEADER;

-- ======= order_reviews ======= 

COPY order_reviews FROM
'C:\Downloads\Dataset\order_reviews_dataset.csv'
(format csv, header true, delimiter ',', encoding 'UTF8');

-- ======= orders ======= 

COPY orders FROM
'C:\Downloads\Dataset\orders_dataset.csv'
DELIMITER ','
CSV HEADER;

-- ======= customers ======= 

COPY customers FROM
'C:\Downloads\Dataset\customers_dataset.csv'
DELIMITER ','
CSV HEADER;

-- ======= seller ======= 

COPY sellers FROM
'C:\Downloads\Dataset\sellers_dataset.csv'
DELIMITER ','
CSV HEADER;

-- ======= order_items ======= 

COPY order_items FROM
'Downloads\Dataset\order_items_dataset.csv'
DELIMITER ','
CSV HEADER;

-- ======= geolocation (dirty) ======= 

COPY geolocation_dirty FROM
'Downloads\Dataset\geolocation_dataset.csv'
DELIMITER ','
CSV HEADER;