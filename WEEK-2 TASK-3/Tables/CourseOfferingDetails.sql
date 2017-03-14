create table CourseOfferingDetails(CourseID varchar(2) references CourseDetails(CourseID),
TraineeID varchar(10) references TraineeDetails(TraineeID),
Marks int(3) check(Marks <=100));

