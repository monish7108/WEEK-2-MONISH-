create table CourseDetails(CourseID varchar(2) unique not null,
CourseName varchar(25),Duration int(2) check(Duration<=21),
Prerequisite varchar(2) references CourseDetails(CourseID));

insert into CourseDetails (CourseID,CourseName,Duration,Prerequisite) values('C1','Problem Solving',2,NULL);
insert into CourseDetails (CourseID,CourseName,Duration,Prerequisite) values('C2','Programming',4,'C1');
insert into CourseDetails (CourseID,CourseName,Duration,Prerequisite) values('C3','RDBMS',7,'C2');
insert into CourseDetails (CourseID,CourseName,Duration,Prerequisite) values('C4','HTML',2,'C3');
insert into CourseDetails (CourseID,CourseName,Duration,Prerequisite) values('C5','OOP Concepts',1,'C4');


select * from CourseDetails;