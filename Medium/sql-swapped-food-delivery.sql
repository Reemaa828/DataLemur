SELECT 
case when order_id%2=0 then order_id-1 when order_id%2<>0 and order_id <>(Select max(order_id) from orders ) then order_id + 1 else order_id end as corrected_order_id, item
FROM orders
order by 1;

