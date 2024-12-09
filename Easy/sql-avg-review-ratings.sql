SELECT extract(MONTH FROM submit_Date) as mth,product_id as product,round(avg(stars),2) as avg_starts 
FROM reviews
group by extract(MONTH FROM submit_Date), product_id
order by 1 
;
