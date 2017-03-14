/*  e. Create sample indexes which can help in query optimizations  */

create index section_id on BatchDetails(SectionID);

show index from BatchDetails;

/*  This query would take advantage of the index: */
select * from BatchDetails where  SectionID='B';


create index CourseName on CourseDetails(CourseName);

show index from CourseDetails;

/*  This query would take advantage of the index: */
select * from CourseDetails where CourseName="RDBMS";