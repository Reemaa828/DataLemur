-- select user_id
-- from (
--     SELECT user_id, lag(transaction_date)over(partition by user_id order by transaction_date) l, 
--     lead(transaction_date)over(partition by user_id order by transaction_date) k
--     from transactions
-- ) h
-- where l is not null and k is not null;

SELECT DISTINCT T1.user_id
FROM transactions AS T1
INNER JOIN transactions AS T2
  ON DATE(T2.transaction_date) = DATE(T1.transaction_date) + 1
INNER JOIN transactions AS T3
  ON DATE(T3.transaction_date) = DATE(T1.transaction_date) + 2
ORDER BY T1.user_id;
