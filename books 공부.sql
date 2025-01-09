insert into category_tb
select 
	distinct		# 중복되는 데이터가 있을 시 하나만 카운트
	0,
    카테고리
from
	books;
    
select * from books;
    
# author(저자), publisher(출판사) 정규화
insert into author_tb
select
	distinct
    0,
    저자명
from
	books;
    
insert into publisher_tb
select
	distinct
    0,
    출판사
from
	books;
    
# 중복 확인하기
select * from books;	# 39598

SELECT
	도서명,
    저자명,
    isbn,
    표지url
from
	books
group by		# 중복 확인
	도서명,				# 38917
    저자명,				# 39304
    isbn,				# 39596
    표지url;				# 39598
    
-- select
-- 	*
-- from
-- 	books b		# table 명 뒤에 as 생략!  table 명은 최대한 짧게!
--     left outer join category_tb ct on ct.category_name = b.카테고리
--     left outer join author_tb at on at.author_name = b.저자명
--     left outer join publisher_tb pt on pt.publisher_name = b.출판사;


-- update		# 이때는 특정 행을 update 하는 것이 아니기때문에 where 절이 필요 없음! (where 은 행 기준!)
-- 	books b
--     left outer join category_tb ct on ct.category_name = b.카테고리
--     left outer join author_tb at on at.author_name = b.저자명
--     left outer join publisher_tb pt on pt.publisher_name = b.출판사
-- set
-- 	카테고리 = ct.category_id,
--     저자명 = at.author_id,
--     출판사 = pt.publisher_id;
--     
-- select
-- 	*
-- from
-- 	books b
--     left outer join category_tb ct on ct.category_name = b.카테고리
--     left outer join author_tb at on at.author_name = b.저자명
--     left outer join publisher_tb pt on pt.publisher_name = b.출판사;