with cte as (
    (SELECT date_format(sales_date, '%Y-%m-%d') as sales_date
    , product_id
    , user_id
    , sales_amount
    from online_sale
    where date_format(sales_date, '%Y-%m') = '2022-03')
    UNION all
    (SELECT date_format(sales_date, '%Y-%m-%d') as sales_date
    , product_id
    , null as user_id
    , sales_amount
    from offline_sale
    where date_format(sales_date, '%Y-%m') = '2022-03')
)
select *
from cte
order by sales_date asc, product_id asc, user_id asc;
