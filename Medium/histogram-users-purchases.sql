SELECT transaction_date, user_id, purchase_count
FROM
(SELECT transaction_date, user_id, count(*) as purchase_count, row_number()over(PARTITION BY user_id order by transaction_Date desc)l
FROM user_transactions GROUP BY user_id,transaction_date ORDER BY 1) k
WHERE k.l=1
