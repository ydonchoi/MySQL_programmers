SELECT member_id, member_name, gender, date_format(date_of_birth, '%Y-%m-%d')
from member_profile
where month(date_of_birth) = '03' and gender = 'w' and TLNO is not null
order by member_id ASC;
