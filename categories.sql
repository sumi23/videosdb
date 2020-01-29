create table categories(
id int primary key,
name varchar(50) not null,
status boolean,
created_by varchar(20) not null,
created_on timestamp not null,
modified_by varchar(20),
modified_on timestamp
);