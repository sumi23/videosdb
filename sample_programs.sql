create table sample_programs(
id int primary key,
name varchar(30) not null,
constraint unique_sample_program_name unique(name),
file longblob not null,
description text,
video_id int not null,
constraint fk_sample_programs_video_id foreign key(video_id) references videos(id));
