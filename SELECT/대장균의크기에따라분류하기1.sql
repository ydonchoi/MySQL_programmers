select id, (case when size_of_colony <= 100 then 'LOW'
when 100 < size_of_colony and size_of_colony <= 1000 then 'MEDIUM'
else 'HIGH'
end) as size
from ecoli_data
order by id asc;
