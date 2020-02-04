create table levels(
id int primary key,
name varchar(10) not null,
constraint unique_level_name unique(name),
prerequisite varchar(10),
created_by varchar(20) not null ,
created_on timestamp not null default current_timestamp,
modified_by varchar(20),
modified_on timestamp default current_timestamp
);
