create table categories(
id int primary key auto_increment,
name varchar(50) not null,
constraint unique_category_name unique(name),
);
