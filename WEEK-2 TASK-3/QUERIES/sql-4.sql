select * from CourseDetails where CourseID in
(select
   distinct g.CourseID
   
from
   (
   select
       distinct(CourseID),
       count(TraineeID) cnt
   from
       CourseOfferingDetails
   group by
       CourseID
   ) g
inner join
   (
   select
       max(s.cnt) max_cnt
   from
       (
       select
           distinct CourseID,
           count(TraineeID) cnt
       from
           CourseOfferingDetails
       group by
           CourseID
       ) s
   ) m
on
   m.max_cnt = g.cnt);