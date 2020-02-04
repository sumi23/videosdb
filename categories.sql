create table categories(
id int primary key,
name varchar(50) not null,
constraint unique_categories_name unique(name),
status boolean,
created_by varchar(30) not null ,
created_on timestamp not null default current_timestamp,
modified_by varchar(30),
modified_on timestamp default current_timestamp
);
