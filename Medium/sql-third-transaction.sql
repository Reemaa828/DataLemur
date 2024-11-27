select user_id, spend , transaction_date FROM transactions 
WHERE transaction_date in (SELECT nth_value(transaction_date,3)over(PARTITION BY user_id order by transaction_date) l
FROM transactions )
