
DROP DATABASE IF EXISTS crowdfunding_db;
CREATE DATABASE crowdfunding_db;

-- Drop table if exists
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS subcategory;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS contacts;

-- Create the names table
CREATE TABLE contacts (
	contact_id INT Primary Key,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    email varchar(255) NOT NULL
);

CREATE TABLE category (
    category_id varchar(255) Primary Key,
    category varchar(255) NOT NULL
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(15) Primary Key,
    subcategory VARCHAR(255) NOT NULL
);

CREATE TABLE campaign (
    cf_id int Primary Key,
    contact_id int NOT NULL,
    company_name varchar(255) NOT NULL,
    details varchar(255) NOT NULL,
    goal float NOT NULL,
    pledged float NOT NULL,
    outcome varchar(255) NOT NULL,
    backers_count float NOT NULL,
    country varchar(3) NOT NULL,
    currency varchar(3) NOT NULL,
    launched_date date NOT NULL,
    target_date date NOT NULL,
    category_id varchar(10)  NOT NULL,
    subcategory_id varchar(15)  NOT NULL,
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);


SELECT * FROM subcategory;
SELECT * FROM category;
SELECT * FROM contacts;
SELECT * FROM campaign;

-- copy contacts (contact_id, first_name, last_name, email)FROM '.\Resources\contacts.csv' DELIMITER ',' CSV HEADER;
-- copy category (category_id, category) FROM '.\Resources\category.csv' DELIMITER ',' CSV HEADER;
-- copy subcategory (sub_category_id, sub_category) FROM '.\Resources\subcategory.csv' DELIMITER ',' CSV HEADER;
-- copy campaign (cf_id, contact_id, company_name, details, goal, pledged, outcome, backers_count, country,currency, launched_date, target_date, category_id, subcategory_id) FROM '.\Resources\campaign.csv' DELIMITER ',' CSV HEADER;

-- SELECT * FROM subcategory;
-- SELECT * FROM category;
-- SELECT * FROM contacts;
-- SELECT * FROM campaign;