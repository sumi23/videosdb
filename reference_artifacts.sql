create table reference_artifacts(
id int primary key auto_increment,
name varchar(30) not null,
constraint unique_reference_artifact_name unique(name),
file longblob not null,
description text,
video_id int not null,
constraint fk_reference_artifacts_video_id foreign key(video_id) references videos(id));
