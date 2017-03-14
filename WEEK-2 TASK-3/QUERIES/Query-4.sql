/* d. Display the details of the course which is being offered for the maximum number of times. */

select * from CourseDetails where CourseID in (
select CourseID from CourseOfferingDetails,(
select count(CourseID) as cnt from CourseOfferingDetails group by CourseID) a
having max(a.cnt));
