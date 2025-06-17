-- 1. Melakukan join director, genre ke tabel movies, dapatkan hanya 5 movie pertama saja

select distinct m.name as title, d.first_name, d.last_name, mg.genre from movies m
join movies_directors md on md.movie_id = m.id
join directors d on d.id = md.director_id
join directors_genres dg on dg.director_id = md.director_id
join movies_genres mg on mg.movie_id = m.id and dg.genre = mg.genre
limit 50;

-- 2. Melakukan join movie dan roles berdasarkan table actors.
select a.id, a.first_name, a.last_name, a.gender, m.name as movie from actors a
join roles r on r.actor_id = a.id
join movies m on m.id = r.movie_id
order by a.first_name asc limit 10;