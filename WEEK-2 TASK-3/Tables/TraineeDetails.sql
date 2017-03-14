create table TraineeDetails (TraineeID varchar(10) unique not null, 
TraineeName varchar(25), BatchID varchar(10) references BatchDetails(BatchID), 
SectionID char(1) references BatchDetails(SectionID));

desc TraineeDetails;

insert into TraineeDetails values('T0001','John','Jan','B');
insert into TraineeDetails values('T0002','Mary','Jan','C');
insert into TraineeDetails values('T0003','Simon','Jan','C');
insert into TraineeDetails values('T0004','Ema','Feb','B');
insert into TraineeDetails values('T0005','Henry','Feb','B');
insert into TraineeDetails values('T0006','Susan','Feb','A');
insert into TraineeDetails values('T0007','Laurel','Feb','A');
insert into TraineeDetails values('T0008','Nikhil','Feb','B');
insert into TraineeDetails values('T0009','Mike','Feb','B');

