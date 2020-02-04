create table sample_programs(
id int primary key,
name varchar(20) not null,
constraint unique_name unique(name),
file longblob not null,
description text,
created_by varchar(20) not null,
created_on timestamp not null default current_timestamp,
modified_by varchar(20),
modified_on timestamp default current_timestamp);
