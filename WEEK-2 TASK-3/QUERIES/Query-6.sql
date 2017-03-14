/* as the num of trainee increases the registration will also increase 
* so will apply range partition 
*/

create table sampleCourseOfferingDetails(CourseID varchar(2) references CourseDetails(CourseID),
TraineeID varchar(10) references TraineeDetails(TraineeID),
Marks int(3) check(Marks <=100));



partition by range columns(Marks) (
partition p1 values less than(60),
partition p2 values less than(101)
);



select PARTITION_NAME,TABLE_ROWS FROM INFORMATION_SCHEMA.partitions
where TABLE_NAME = 'CourseOfferingDetails';

select * from CourseOfferingDetails partition(p1);