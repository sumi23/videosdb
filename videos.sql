create table videos(
id int primary key,
name varchar(50) not null,
display_name varchar(50) not null,
url varchar(50) not null,
duration varchar(10),
tags varchar(100),
status boolean,
description text,
transcript longblob,
created_by varchar(20) not null,
created_on timestamp not null default current_timestamp,
modified_by varchar(20),
modified_on timestamp default current_timestamp,
category_id int not null,
level_id int not null,
foreign key(category_id) references categories(id),
foreign key(level_id) references levels(id)
);
