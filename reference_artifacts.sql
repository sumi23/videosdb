create table reference_artifact(
id int primary key,
name varchar(20) not null,
file longblob,
description text,
created_by varchar(20) not null,
created_on timestamp not null default current_timestamp,
modified_by varchar(20),
modified_on timestamp default current_timestamp);
