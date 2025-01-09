# select

select
	*
from
	student_tb;
    
select
	student_name,
    student_year
from
	student_tb;
    
# where 조건
select
	*
from
	student_tb
where
#	student_year = 3 || student_year = 4;
#   student_year > 2 and student_year < 5; 	( || : or , && : and   >>  글자로 작성 가능)
#   student_year >= 3 && student_year <= 4;
#	student_year in(3, 4);   		# in(a, b) : a 이상 b 이하의 범위
 	student_id between 3 and 4;  	#  : 3에서 4사이
    

select 
	10 as num,
    20 as num2,
    '이름' as name
# union		# 합집합을 의미함  >>  데이터가 동일할 경우, 중복을 제거함
union all	# 중복을 제거하지 않음
select		# union 사용시 주의점 : column 의 개수가 동일해야한다.  (데이터 자료형도 맞춰주는 것을 권장함)
	10 as num,
    20 as num2,
    '이름' as name;
    
select
	1 as id,
    '월' as day
union all
select
	2 as id,
	'화' as day
union all
select
	3 as id,
	'수' as day;
    
select
	1 as number,
	student_name
from
	student_tb
union
select
	5 as number,
    instructor_name
from
	instructor_tb;
    

select
	row_number() over(order by student_name) as id,
	student_name
from
	student_tb;
    
select
	*
from
	student_tb
order by
	#student_name; 	# 오름차순 정렬(이름)
    student_name desc;	# 내림차순 정렬	(desc 대신 asc : 오름차순)
    
select
	*	
from
	student_tb
order by
student_year desc,
student_name;
 
select
	row_number() over(order by name) as `index`,
    name
from
	(select
		student_name as name
	from
		student_tb
	union
	select
		instructor_name
	from
		instructor_tb) as name_tb;

select
	dense_rank() over(order by `id`) as `index`,  	# rank: 순위(공동 순위 건너뜀(공동 1등 다음 3등))   dense_rank: 공동 순위 건너뛰지 X
    name_tb.*
from
	(select
		course_id as `id`,
		course_name as `name`
	from
		course_tb
	union
    select
		major_id,
        major_name
	from
		major_tb) as name_tb;
        
        
# where 와일드 카드(like)
select
	*
from
	instructor_tb
where
	instructor_name like '_교_';		# % : 미지 데이터, ex) %교 : ~교 로 끝나는 아무 단어. 	_ : 미지 데이터(글자1개), ex) _교: X교(X에는 아무 글자나 가능)
    