select count(id) as fish_count
from fish_name_info f1 left join fish_info f2 on f1.fish_type = f2.fish_type
where f1.fish_name in ('bass', 'snapper');
