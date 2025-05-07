SELECT hour(datetime) hour, count(animal_id) count
from animal_outs
where hour(datetime) >= 9 and hour(datetime) < 20
group by hour(datetime)
order by hour(datetime);
