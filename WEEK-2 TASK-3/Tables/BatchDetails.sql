create table BatchDetails (BatchID varchar(10) , SectionID char(1) check (SectionID in ('A','B','C')),
BatchStream varchar(7) check (BatchStream in('JAVA','PYTHON','SALESFORCE','MOBILE')),
BatchSize int(3) check(BatchSize between 1 and 210) ,
primary key(BatchID,SectionID));

insert into BatchDetails values('Jan','B','MOBILE',150);
insert into BatchDetails values('Jan','C','JAVA',200);
insert into BatchDetails values('Feb','A','PYTHON'  ,210);
insert into BatchDetails values('Feb','B','SALESFORCE',150);
insert into BatchDetails values('Mar','A','MOBILE',100);

select * from BatchDetails details;