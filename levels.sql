create table levels(
id int primary key,
name varchar(10) not null,
prerequisite varchar(10),
created_by varchar(20) not null,
created_on timestamp not null,
modified_by varchar(20),
modified_on timestamp
);