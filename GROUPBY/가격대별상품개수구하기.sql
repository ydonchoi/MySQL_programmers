SELECT truncate(price, -4), count(product_id) products
from product
group by truncate(price, -4)
order by truncate(price, -4);
