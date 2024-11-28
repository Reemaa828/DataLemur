SELECT card_name, issued_Amount
FROM
(SELECT card_name, issued_amount, RANK()OVER(PARTITION BY card_name ORDER BY issue_year,issue_month) l
FROM monthly_cards_issued) k 
WHERE k.l=1
ORDER BY 2 DESC ;
