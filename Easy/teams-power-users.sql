SELECT  sender_id, count(*)
FROM messages
where extract(MONTH from sent_date)='08' and extract(year from sent_date)='2022'
group by sender_id
order by 2 DESC
limit 2;
