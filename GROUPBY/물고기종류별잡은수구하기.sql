select count(f1.fish_type) fish_count, f2.fish_name
from fish_info f1, fish_name_info f2
where f1.fish_type = f2.fish_type
group by f2.fish_name
order by count(f1.fish_type) desc;
