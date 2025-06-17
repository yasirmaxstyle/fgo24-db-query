-- 1. Mencari movie dengan tahun rilis lebih dari tahun 2000
select * from movies where year > 2000;

-- 2. Mencari actor dengan akhiran nama 's'
select * from actors where last_name ilike '%s';