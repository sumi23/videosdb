create table reference_urls(
id int primary key auto_increment,
name varchar(30) not null,
constraint unique_reference_url_name unique(name),
url varchar(50) not null,
description text,
video_id int not null,
constraint fk_reference_urls_video_id foreign key(video_id) references videos(id));

