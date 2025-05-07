select f1.id, f2.fish_name, f1.length
from fish_info f1 left join (
    select fish_type, max(length) max_len
    from fish_info 
    group by fish_type
) re_f1
on f1.fish_type = re_f1.fish_type
left join fish_name_info f2
on f1.fish_type = f2.fish_type
where f1.length = re_f1.max_len
order by f1.id;
