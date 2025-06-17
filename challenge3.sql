-- 1. Mendapatkan data director, berapa genre yang di-direct
select
    id,
    first_name,
    last_name,
    count(*) as movies_count
from
    directors d
    join directors_genres dg on dg.director_id = d.id
group by
    d.id;

-- 2. Mendapatkan data actor yang memiliki roles lebih dari 5
select
    id,
    first_name,
    last_name,
    count(*) as roles_count
from actors a
    join roles r on r.actor_id = a.id
group by
    a.id
having
    count(*) > 5;

-- 3. Mendapatkan directors paling produktif sepanjang masa
select
    id,
    first_name,
    last_name,
    count(*) as movies_count
from
    directors d
    join movies_directors md on md.director_id = d.id
group by
    d.id
order by movies_count desc
limit 1;

select d.id, d.first_name, d.last_name, count(*) as movies_count
from
    directors d
    join movies_directors md on md.director_id = d.id
group by
    d.id,
    d.first_name,
    d.last_name
having
    count(*) = (
        select max(movies_count)
        from (
                select d.id, d.first_name, d.last_name, count(*) as movies_count
                from
                    directors d
                    join movies_directors md on md.director_id = d.id
                group by
                    d.id
            ) subquery
    );

-- 4. Mendapatkan tahun tersibuk sepanjang masa
select year, count(*) as movies_count
from movies
group by
    year
order by movies_count desc
limit 1;

--use having
select year, count(*) as movies_count
from movies
group by
    year
having
    count(*) = (
        select max(movies_count)
        from (
                select year, count(*) as movies_count
                from movies
                group by
                    year
            ) subquery
    );

-- 5. Mendapatkan movies dengan genre yang dibuatkan menjadi 1 column,
--    (value dipisahkan dengan koma) dengan menggunakan string_agg
select m.name, string_agg(mg.genre, ', ') mg
from movies m
    join movies_genres mg on mg.movie_id = m.id
group by
    m.id;