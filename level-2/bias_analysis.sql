-- Create the tables with the specified schemas
CREATE TABLE review_id_table (
  review_id TEXT PRIMARY KEY NOT NULL,
  customer_id INTEGER,
  product_id TEXT,
  product_parent INTEGER,
  review_date DATE -- this should be in the formate yyyy-mm-dd
);

-- This table will contain only unique values
CREATE TABLE products (
  product_id TEXT PRIMARY KEY NOT NULL UNIQUE,
  product_title TEXT
);

-- Customer table for first data set
CREATE TABLE customers (
  customer_id INT PRIMARY KEY NOT NULL UNIQUE,
  customer_count INT
);

-- vine table
CREATE TABLE vine_table (
  review_id TEXT PRIMARY KEY,
  star_rating INTEGER,
  helpful_votes INTEGER,
  total_votes INTEGER,
  vine TEXT
);


-- Query the tables

SELECT * FROM review_id_table
LIMIT 10;

SELECT COUNT(*) FROM review_id_table;

SELECT * FROM products
LIMIT 10;

SELECT COUNT(*) FROM products;

SELECT * FROM customers
LIMIT 10;

SELECT COUNT(*) FROM customers;

SELECT * FROM vine_table
LIMIT 10;

SELECT COUNT(*) FROM vine_table;

-- Level 2 Analysis

SELECT AVG(star_rating) FROM vine_table;

-- Basic comparison of vine and non-vine reviews:
SELECT vine, count(star_rating) as count,
round(AVG(star_rating),4) as rating_mean,
round(STDDEV_SAMP(star_rating),4) as rating_sd
FROM vine_table GROUP BY vine;

-- Exploration...
select customer_count, customer_id from customers group by customer_count, customer_id
order by customer_count DESC LIMIT 100;

select customer_count, count(customer_count) from customers
-- where customer_count = 909
group by customer_count
order by count(customer_count), customer_count DESC;

select * from customers where customer_id = 52759271;

-- Filter out reviews from reviewers without many reviews. This requires two joins.
select * from vine_table
inner join review_id_table ON vine_table.review_id = review_id_table.review_id
inner join customers ON review_id_table.customer_id = customers.customer_id
where customers.customer_count > 5
limit 5;

-- Filter out reviews from reviewers without many reviews. This requires two joins.
SELECT vine,
		count(star_rating) as count,
		round(AVG(star_rating),6) as rating_mean,
		round(STDDEV_SAMP(star_rating),6) as rating_sd
FROM vine_table
inner join review_id_table ON vine_table.review_id = review_id_table.review_id
inner join customers ON review_id_table.customer_id = customers.customer_id
where customers.customer_count > 5
GROUP BY vine
;

