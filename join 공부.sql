insert into data2_tb
values
	(default, '111'),
	(default, '222'),
	(default, '333'),
	(default, '444'),
	(default, '555');
    
select
	*
from
	data2_tb;


insert into data1_tb
values 
	(default, 'hhh', 6),
	(default, 'iii', 7);
    
select
	*
from
	data1_tb																# inner join: 조건에 맞는(on 뒤 문장) 데이터만 선택, null 제외
    left outer join data2_tb on data2_tb.data2_id = data1_tb.data2_id;		# left(rignt) outer join: 왼쪽(오른족) 데이터를 다 가져오고 조건에 맞춰 오른쪽(왼쪽) 데이터를 가져옴, null 포함


update
	data1_tb
set
	data2_id = 10
where
	data1_id in(5, 7);

