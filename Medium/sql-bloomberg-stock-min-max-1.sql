WITH cte AS
(
SELECT ticker, to_Char(date,'Mon-YYYY') as highest_mth, max(open) as highest_open,
row_number()over(PARTITION BY ticker ORDER BY MAX(open) DESC) ll
FROM stock_prices GROUP BY ticker,to_Char(date,'Mon-YYYY')
),
cte1 AS
(
SELECT ticker, to_Char(date,'Mon-YYYY') as lowest_mth, min(open) as lowest_open, row_number()over(PARTITION BY ticker ORDER BY min(open) ) l
FROM stock_prices GROUP BY ticker,to_Char(date,'Mon-YYYY')
)
SELECT m.ticker,highest_mth,highest_open,lowest_mth,lowest_open 
FROM cte m inner JOIN cte1 n on m.ticker=n.ticker and m.ll=1 and n.l=1 ;
