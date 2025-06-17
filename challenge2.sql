-- 1. Melakukan join director, genre ke tabel movies, dapatkan hanya 5 movie pertama saja

select distinct m.name, d.first_name, d.last_name, dg.genre from movies m
join movies_directors md on md.movie_id = m.id
join directors d on d.id = md.director_id
join directors_genres dg on dg.director_id = md.director_id
limit 5;