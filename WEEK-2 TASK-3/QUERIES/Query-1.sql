/* a. Display the details of the COURSE that has enrolment by every trainee. */

select * from CourseDetails where COURSEID=(
select CourseID from CourseOfferingDetails group by CourseID
having count(distinct TraineeID)=(select count(*) from TraineeDetails));