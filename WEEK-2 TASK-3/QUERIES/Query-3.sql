/*  c. Display the details along with the batch details of the trainee 
	who have scored maximum marks in RDBMS.  */

select a.* ,b.* from TraineeDetails a,BatchDetails b where TraineeID in (
select TraineeID from CourseOfferingDetails where CourseID in
(Select CourseID from CourseDetails where CourseName="RDBMS")
having max(Marks)) and b.BatchID=a.BatchID and a.SectionID=b.SectionID;