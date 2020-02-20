create table levels(
id int primary key auto_increment,
name varchar(10) not null,
constraint unique_level_name unique(name),
);
