select count(*) as duplicate_companies
FROM
(SELECT company_id 
FROM job_listings
group by company_id,title
having count(*)>1)  k
