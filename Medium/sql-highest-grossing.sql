select category,product,h as total_Spend FROM(
SELECT category,product, sum(spend) h, dense_rank()over(PARTITION BY category order by sum(spend) DESC ) l from product_spend
where EXTRACT(year FROM transaction_date)='2022' 
GROUP BY category,product
) kk WHERE l<=2;
