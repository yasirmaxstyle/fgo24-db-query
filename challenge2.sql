-- 1. Melakukan join director, genre ke tabel movies, dapatkan hanya 5 movie pertama saja

select distinct m.name as title, d.first_name, d.last_name, mg.genre from movies m
join movies_directors md on md.movie_id = m.id
join directors d on d.id = md.director_id
join directors_genres dg on dg.director_id = md.director_id
join movies_genres mg on mg.movie_id = m.id and dg.genre = mg.genre
limit 10;