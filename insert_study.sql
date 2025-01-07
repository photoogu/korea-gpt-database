insert into instructor_tb
	(instructor_id, instructor_name) 
values
	(default, '김교수'), 
	(default, '박교수'), 
	(default, '이교수');
    
insert into course_tb
values
	(default, '데이터베이스론'),
	(default, '알고리즘'),
	(default, '운영체제'),
	(default, '자료구조');
    
insert into course_register_tb
values
	(default, 1, 2, '월', '2025-01-07', '2025-06-06', 2),
	(default, 1, 2, '목', '2025-01-07', '2025-06-06', 2),
	(default, 1, 3, '화', '2025-01-07', '2025-06-06', 2),
	(default, 1, 3, '수', '2025-01-07', '2025-06-06', 2),
	(default, 2, 1, '월', '2025-03-07', '2025-08-06', 1),
	(default, 2, 1, '수', '2025-03-07', '2025-08-06', 1),
	(default, 3, 1, '화', '2025-02-07', '2025-07-06', 1),
	(default, 3, 1, '금', '2025-02-07', '2025-07-06', 1),
	(default, 4, 3, '수', '2025-03-07', '2025-08-06', 2),
	(default, 4, 3, '금', '2025-03-07', '2025-08-06', 2);
    
insert into major_tb
values
	(default, '컴퓨터공학과'),
	(default, '소프트웨어공학과');
    
insert into student_tb
values
	(default, '최석현', 3, '남', 1),
	(default, '백진우', 4, '남', 1),
	(default, '박소율', 3, '여', 2),
	(default, '정현영', 4, '여', 1);
    
insert into course_registering_tb
values
	(default, 1, 1),
	(default, 1, 2),
	(default, 1, 3),
	(default, 1, 4),
	(default, 2, 2),
	(default, 2, 4),
	(default, 3, 1),
	(default, 3, 3),
	(default, 4, 1),
	(default, 4, 2),
	(default, 4, 3),
	(default, 4, 4),
	(default, 5, 1),
	(default, 5, 2),
	(default, 6, 1),
	(default, 6, 2),
	(default, 6, 3);
    
select 
	(select
        (select
			course_name
		from
			course_tb
		where
			course_tb.course_id = course_registering_information_tb.course_id)
	from
		course_registering_information_tb
	where
		course_registering_information_tb.course_registering_information_id = course_registering_tb.course_registering_information_id) as course_name,
	(select
		day
	from
		course_registering_information_tb
	where
		course_registering_information_tb.course_registering_information_id = course_registering_tb.course_registering_information_id) as day,
	(select
		(select
			instructor_name
		from
			instructor_tb
		where
			instructor_tb.instructor_id = course_registering_information_tb.instructor_id)
	from
		course_registering_information_tb
	where
		course_registering_information_tb.course_registering_information_id = course_registering_tb.course_registering_information_id) as instructor_name,
	(select
		(select
			major_name
		from
			major_tb
		where
			major_tb.major_id = course_registering_information_tb.major_id)
	from
		course_registering_information_tb
	where
		course_registering_information_tb.course_registering_information_id = course_registering_tb.course_registering_information_id) as course_major_name
from
	course_registering_tb
where
	student_id = (select
					student_id
				from
					student_tb
				where
					student_name = '백진우');
                    


				
	
    
    
    
    
    
    
    
    