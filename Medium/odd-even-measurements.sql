SELECT CAST(measurement_time as date),
sum (case when l%2<>0 then measurement_value else 0 end) old_sum,
sum (case when l%2=0 then measurement_value else 0 end) even_sum
FROM
(
SELECT measurement_time, measurement_value, 
row_number()over(PARTITION BY CAST(measurement_time as date) order by cast(measurement_time as time)) l
FROM measurements) k
GROUP BY 1 ORDER BY 1 ;
