select
	*
from
	course_registering_information_tb
where
	instructor_id = (select
						instructor_id
					from
						instructor_tb
					where
						instructor_name = '김교수');
                        
select
	course_register_id,
    course_id as courseId,
    instructor_id,
    (select 
		instructor_name 
    from 
		instructor_tb 
	where 
		instructor_tb.instructor_id = course_register_tb.instructor_id) as instructor_name
from
	course_register_tb;
    
    
    