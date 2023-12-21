--Delete tables if exist
DROP TABLE category;
DROP TABLE subcategory;
DROP TABLE contact;
DROP TABLE campaign;

--Create category table
CREATE TABLE category (
    category_id VARCHAR(30)   NOT NULL,
    category VARCHAR(255)   NOT NULL,
	PRIMARY KEY (category_id)
);

SELECT * from category;

--Create subcategory table
CREATE TABLE subcategory (
    subcategory_id VARCHAR(30)   NOT NULL,
    subcategory VARCHAR(255)   NOT NULL,
	PRIMARY KEY (subcategory_id)
);

SELECT * from subcategory;

--Create contact table
CREATE TABLE contact (
    contact_id INT   NOT NULL,
    first_name VARCHAR(255)   NOT NULL,
    last_name VARCHAR(255)   NOT NULL,
    email VARCHAR(255)   NOT NULL,
	PRIMARY KEY (contact_id)
);

SELECT * from contact;

--Create a campain table
CREATE TABLE campaign (
    cf_id INT   NOT NULL,
    contact_id INT   NOT NULL,
    company_name VARCHAR(255)   NOT NULL,
    description VARCHAR(255)   NOT NULL,
    goal INT   NOT NULL,
    pledged INT   NOT NULL,
    outcome VARCHAR(30)   NOT NULL,
    backers_count INT   NOT NULL,
    country VARCHAR(30)   NOT NULL,
    currency VARCHAR(30)   NOT NULL,
    launched_date DATE   NOT NULL,
    end_date DATE   NOT NULL,
    category_id VARCHAR(30)   NOT NULL,
    subcategory_id VARCHAR(30)   NOT NULL,
    PRIMARY KEY (cf_id),
	FOREIGN KEY (contact_id) REFERENCES contact(contact_id),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

SELECT * from campaign;

--Manually import the csv files to each tables and check with SELECT command.
SELECT * from category;

SELECT * from subcategory;

SELECT * from contact;

SELECT * from campaign;