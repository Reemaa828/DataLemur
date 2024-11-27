select p.page_id 
FROM pages p left JOIN page_likes pl on p.page_id=pl.page_id 
WHERE pl.page_id is null; 
