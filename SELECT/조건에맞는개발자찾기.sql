select id, email, first_name, last_name
from developers d
where d.skill_code & (select s.code from skillcodes s where s.name='python')
or d.skill_code & (select s.code from skillcodes s where s.name='c#')
order by id asc;
