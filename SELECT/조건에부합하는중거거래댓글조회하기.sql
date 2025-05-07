SELECT TITLE, b.board_id BOARD_ID, reply_id REPLY_ID, r.writer_id WRITER_ID, r.contents CONTENTS, date_format(r.created_date, '%Y-%m-%d') as CREATED_DATE
from used_goods_board b, used_goods_reply r
where b.board_id = r.board_id and date_format(r.created_date,'%Y-%m') = '2022-10'
order by r.created_date ASC, title ASC;
