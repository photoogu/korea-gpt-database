call sp_insert_book('aaa', '1234', '가오광가가', '테스트출판사', '테스트카테고리', 'http://');

SELECT * FROM study.course_registering_information_tb;

call sp_insert_course_registering_information('네트워크', '김준일', '월', '2025-01-13', '2025-02-13', '정보보안');

select
	*
from
	course_registering_information_tb crit
    left outer join course_tb ct on(ct.course_id = crit.course_id)
    left outer join instructor_tb it on(it.instructor_id = crit.instructor_id)
    left outer join major_tb mt on(mt.major_id = crit.major_id)
    ;
    