select
	bct.board_category_id,
    bct.board_category_name,
    -- (select count(*) from board_tb where board_category_id = bct.board_category_id) as board_count # 전체 개수 조회
    count(*)		--  >> 내가 작성한 게시글 개수 조회
from
	board_category_tb bct
    inner join board_tb bt on(bt.board_category_id = bct.board_category_id)
where
	bt.user_id = 1
group by
	bct.board_category_id,
    bct.board_category_name;