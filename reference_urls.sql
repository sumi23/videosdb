create table reference_url(
id int primary key,
name varchar(20) not null,
url varchar(20) not null,
description text,
created_by varchar(20) not null,
created_on timestamp not null default current_timestamp,
modified_by varchar(20),
modified_on timestamp default current_timestamp);

