create table reference_artifacts(
id int primary key auto_increment,
name varchar(50) not null,
constraint unique_reference_artifact_name unique(name),
file varchar(50) not null,
description varchar(200),
video_id int not null,
constraint fk_reference_artifacts_video_id foreign key(video_id) references videos(id) on delete cascade);
