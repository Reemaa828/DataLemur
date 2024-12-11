SELECT customer_id
FROM customer_contracts INNER join products using(product_id)
GROUP by customer_id
having count(distinct product_category)=(select count(distinct product_category) from products)
;
