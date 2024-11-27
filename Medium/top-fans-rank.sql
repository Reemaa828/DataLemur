select * FROM
(SELECT artist_name, dense_rank()over(order by count(*) DESC) as artist_Rank
FROM artists a inner join songs using(artist_id) inner join global_song_rank using(song_id)
WHERE rank<=10
GROUP BY a.artist_id,a.artist_name
)k where artist_rank <6
