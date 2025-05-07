SELECT user_id, product_id
from online_sale
group by user_id, product_id having count(sales_date) > 1
order by user_id ASC, product_id DESC;
