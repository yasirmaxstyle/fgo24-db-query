-- 1. Mencari movie dengan tahun rilis lebih dari tahun 2000
select * from movies where year > 2000;

-- 2. Mencari actor dengan akhiran nama 's'
select * from actors where last_name ilike '%s';

-- 3. Mencari movie dengan rating di antara 5 dan 7 tahun rilis 2004 sampai 2006
--    urutkan dari yang tertinggi ratingnya
select * from movies where rankscore between 5 and 7
and year between 2004 and 2006 order by rankscore desc;