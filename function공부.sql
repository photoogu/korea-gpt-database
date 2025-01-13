# 함수 정의하기 위해 필요한 설정
select @@log_bin_trust_function_creators;		
set global log_bin_trust_function_creators = 1;

select study.add(10, 20);
select
	*
from
	course_registering_information_tb
where
	instructor_id = study.find_instructor_id_by_name('김준일');