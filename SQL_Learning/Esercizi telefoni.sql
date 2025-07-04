-- tutti gli smartphone (solo nome, ram, dimensioni, cpu)
select nome, ram, dimensioni, cpu
from smartphone;

-- smartphone con display 1080x1920
select nome
from smartphone
where display_resolution = '1080x1920';

-- smartphone con display 1080x1920 e 3gb ram
select nome
from smartphone
where display_resolution = '1080x1920'
  and ram = '3Gb';

-- smartphone della serie galaxy
select *
from smartphone
where lower(nome) like 'galaxy%';

-- galaxy con cpu dual-core
select *
from smartphone
where lower(nome) like 'galaxy%'
  and lower(cpu) like '%dual-core%';

-- smartphone con ram < 2gb e non dual-core
select *
from smartphone
where (ram = '1Gb' or ram = '1.5Gb' or ram = '512Mb')
  and lower(cpu) not like '%dual-core%';

-- smartphone con ram >= 2gb e peso <= 150g
select *
from smartphone
where (ram = '2Gb' or ram = '3Gb')
  and peso <= 150;

-- smartphone con peso > 150g
select *
from smartphone
where peso > 150;

-- smartphone con peso < 150g
select *
from smartphone
where peso < 150;

-- smartphone con cpu quad core ordinati per densità schermo
select *
from smartphone
where lower(cpu) like '%quad core%'
order by display_ppi;

-- smartphone con cpu quad core ordinati per densità schermo desc
select *
from smartphone
where lower(cpu) like '%quad core%'
order by display_ppi desc;

-- media dimensione schermo
select avg(display_size::numeric) as media_dimensione
from smartphone;

-- numero smartphone con 2gb di ram
select count(*)
from smartphone
where ram = '2Gb';

-- galaxy con peso tra 110 e 160g
select count(*)
from smartphone
where lower(nome) like 'galaxy%'
  and peso between 110 and 160;

-- media peso smartphone dual-core con ram diversa da 2gb
select avg(peso)
from smartphone
where lower(cpu) like '%dual-core%'
  and ram <> '2Gb';

-- conteggio smartphone per ram
select ram, count(*)
from smartphone
group by ram;

-- smartphone con ppi > 400 per risoluzione display
select display_resolution, count(*)
from smartphone
where display_ppi > 400
group by display_resolution;









