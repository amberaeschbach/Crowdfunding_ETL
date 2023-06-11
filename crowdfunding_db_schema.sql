--drop existing tables

drop table if exists contacts;
drop table if exists category;
drop table if exists subcategory;
drop table if exists campaign;

--create contacts table

CREATE TABLE contacts (
	contact_id int NOT NULL,
	first_name VARCHAR(150) NOT NULL,
	last_name VARCHAR (150) NOT NULL,
	email VARCHAR(150) NOT NULL,
		primary key (contact_id)
);

--create category table

CREATE TABLE category (
    category_id varchar (150)   NOT NULL,
    category varchar (150)  NOT NULL,
	primary key (category_id)
);

--create subcategory table

CREATE TABLE subcategory (
	subcategory_id VARCHAR(150) NOT NULL,
	subcategory VARCHAR(150) NOT NULL,
		primary key (subcategory_id)
);

--create campaign table

CREATE TABLE campaign (
	cf_id INT NOT NULL,
	contact_id INT NOT NULL,
	company_name VARCHAR(300) NOT NULL,
	description VARCHAR(300) NOT NULL,
	goal NUMERIC(10,2),
	pledged NUMERIC(10,2),
	outcome VARCHAR(300) NOT NULL,
	backers_count INT NOT NULL,
	country VARCHAR(300) NOT NULL,
	currency VARCHAR(300) NOT NULL,
	launched_date DATE NOT NULL,
	end_date DATE NOT NULL,
	category_id VARCHAR(300) NOT NULL,
	subcategory_id VARCHAR(300) NOT NULL,
		primary key (cf_id),
		foreign key (contact_id) references contacts(contact_id),
		foreign key (subcategory_id) references subcategory(subcategory_id)
);

select * from category
select * from campaign
select * from contacts
select * from subcategory