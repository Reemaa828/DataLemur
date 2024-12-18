select card_name, max(issued_amount) - min(issued_amount) as l
FROM monthly_cards_issued
group by card_name
order by l DESC
