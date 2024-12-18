SELECT drug,(total_sales-cogs) as total_profit
FROM pharmacy_sales
order BY 2 desc limit 3;
