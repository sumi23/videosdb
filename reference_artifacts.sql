create table reference_artifacts(
id int primary key,
name varchar(20) not null,
constraint unique_name unique(name),
file longblob not null,
description text,
created_by varchar(20) not null,
created_on timestamp not null default current_timestamp,
modified_by varchar(20),
modified_on timestamp default current_timestamp,
video_id int not null,
constraint fk_video_id foreign key(video_id) references videos(id));
