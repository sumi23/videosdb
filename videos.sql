create table videos(
id int primary key auto_increment,
name varchar(50) not null,
constraint unique_video_name unique(name),
display_name varchar(50) not null,
url varchar(50) not null,
constraint unique_url unique(url),
duration time,
tags varchar(100) not null,
status boolean,
description text,
transcript longblob,
created_by varchar(30) not null,
created_on timestamp not null default current_timestamp,
modified_by varchar(30),
modified_on default null on update current_timestamp,
category_id int not null,
level_id int not null,
constraint fk_category_id foreign key(category_id) references categories(id),
constraint fk_level_id foreign key(level_id) references levels(id)
);
