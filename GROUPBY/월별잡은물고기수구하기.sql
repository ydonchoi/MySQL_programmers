select count(id) fish_count, month(time) month
from fish_info
group by month(time)
order by month(time);
