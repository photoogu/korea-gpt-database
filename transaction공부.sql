insert into data_b_tb
values
	(default, '111'),
	(default, '222'),
	(default, '333');

insert into data_a_tb
values 
	(default, 'aaa', 1),
	(default, 'bbb', 1),
	(default, 'ccc', 2),
	(default, 'ddd', 3),
	(default, 'eee', 3);
    
select
	*
from
	data_b_tb b
	left outer join data_a_tb a on(a.data_b_id = b.data_b_id);
    
delete
from
	data_b_tb
where
	data_b_value = '333';
    
insert into data_b_tb
values
	(default, '555');
    
select
	*
from
	data_c_tb;
    
select
	*
from
	data_d_tb;
    
# transaction

select @@autocommit;  	# @@변수명 : 전역변수  autocommit: 자동저장  >>  workbench 열리면 따로 설정해줘야함
set autocommit = 0;		# transaction 사용 시 autocommit 을 0으로 설정 후 사용해야함. 1로 설정되어있으면 자동 commit이 되기 때문

insert into data_b_tb
values(default, '777');

commit; 	# 수동저장

select * from data_b_tb;

start transaction;		#시작

insert into data_b_tb
values(default, '4040');

update
	data_b_tb
set
	data_b_value = '999'
where
	data_b_value = '777';

rollback;				#되돌리기

savepoint aa;			#transaction 중간 저장 지점
rollback to aa;			#savepoint 까지만 rollback 시켜줌

commit;					#끝_최종!(rollback 불가)















