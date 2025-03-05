insert into board_like_tb
values
	(default, 9, 6),
	(default, 9, 7),
	(default, 9, 2),
	(default, 8, 4),
	(default, 8, 3),
	(default, 8, 1),
	(default, 8, 7),
	(default, 7, 6),
	(default, 7, 5),
	(default, 7, 2);


select
	bt.*,
    ut.nickname,
    ut.profile_img,
    (select count(*) from board_like_tb where board_id = bt.board_id) as likecount
from
	board_tb bt
    inner join user_tb ut on (ut.user_id = bt.user_id)
order by
	bt.board_id desc;
    
insert into board_tb
select
	0,
    board_category_id,
    user_id,
    title,
    content,
    floor(1 + (rand() * 1000)),
    now(),
    now()
from
	board_tb;
    
delete
from
board_tb
where
board_id > 1000;