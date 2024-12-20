SELECT
  manufacturer,
  count(drug),
  abs(sum(total_sales) - sum(cogs)) AS net_value
FROM pharmacy_sales
WHERE total_sales - cogs <= 0
group by manufacturer
order by 3 desc;
