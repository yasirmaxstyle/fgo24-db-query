-- 1. Mendapatkan data director, berapa genre yang di-direct
select d.id, d.first_name, d.last_name, count(*) as movies_count
from
    directors d
    join directors_genres dg on dg.director_id = d.id
group by
    d.id;

-- 2. Mendapatkan data actor yang memiliki roles lebih dari 5

-- 3. Mendapatkan directors paling produktif sepanjang masa


-- 4. Mendapatkan tahun tersibuj sepanjang masa

-- 5. Mendapatkan movies dengan genre yang dibuatkan menjadi 1 column,
--    dengan menggunakan string_agg