SELECT car_id
, if(car_id in (select car_id from car_rental_company_rental_history where start_date <= '2022-10-16' and end_date >= '2022-10-16'),'대여중','대여 가능') availability
from car_rental_company_rental_history
group by car_id
order by car_id desc;
