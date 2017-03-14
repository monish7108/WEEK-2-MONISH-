/* b. Display the details of the trainee who have registered for every course. */

select * from TraineeDetails where TraineeID=(
select TraineeID from CourseOfferingDetails Group by TraineeID
having count(distinct CourseID)=(select count(*) from CourseDetails));