create table sample_programs(
id int primary key auto_increment,
name varchar(50) not null,
constraint unique_sample_program_name unique(name),
file varchar(50) not null,
description varchar(200),
video_id int not null,
constraint fk_sample_programs_video_id foreign key(video_id) references videos(id) on delete cascade);
