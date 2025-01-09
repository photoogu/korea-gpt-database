select
	bt.book_id,
    bt.book_name,
    bt.isbn,
    bt.author_id,
    `at`.author_id as at_author_id,
    `at`.author_name,
    bt.publisher_id,
    pt.publisher_id as pt_publisher_id,
    pt.publisher_name,
    bt.category_id,
    ct.category_id as ct_category_id,
    ct.category_name,
    bt.book_img_url
from
	book_tb bt
    left outer join author_tb `at` on `at`.author_id = bt.author_id
    left outer join category_tb ct on ct.category_id = bt.category_id
    left outer join publisher_tb pt on pt.publisher_id = bt.publisher_id
where
	bt.category_id between 10 and 100;


select
    bt.publisher_id,
    pt.publisher_name,
    count(bt.publisher_id) as book_count		# group by 에서 사용 가능한 함수, group by로 묶여진 중복 개수
-- 	sum(bt.book_id) as book_count				# sum, min, max, avg 등이 있음
from
	book_tb bt
    left outer join author_tb `at` on `at`.author_id = bt.author_id
    left outer join category_tb ct on ct.category_id = bt.category_id
    left outer join publisher_tb pt on pt.publisher_id = bt.publisher_id
group by
	bt.publisher_id,
    pt.publisher_name
having					# group by 이후의 조건
	book_count > 10
order by
	bt.publisher_id
limit 0, 10				# limit (시작지점), (개수) : 시작지점부터 개수만큼 데이터 선택

# 순서
# 1. from(테이블 선택) >> 2. where(행 선택) >> 3. group by >> 4. having >> 5. select(최종 선택) >> 6. order(정렬) >> 7. limit(데이터 시작지점 및 개수 제한)








	