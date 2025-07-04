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

-- conteggio smartphone per ram con meno di 2 unità
select ram, count(*) as totale
from smartphone
group by ram
having count(*) < 2;

-- media peso per ram > 130g
select ram, avg(peso) as media_peso
from smartphone
group by ram
having avg(peso) > 130;

-- media ppi per ram > 400
select ram, avg(display_ppi)
from smartphone
group by ram
having avg(display_ppi) > 400;

-- risoluzione con media peso > 120g
select display_resolution, avg(peso)
from smartphone
group by display_resolution
having avg(peso) > 120;

-- elenco smartphone con sistema operativo
select s.nome, o.descrizione
from smartphone s
join os o on s.id_os = o.id;

-- elenco smartphone con sistema operativo ordinato per descrizione
select s.nome, o.descrizione
from smartphone s
join os o on s.id_os = o.id
order by o.descrizione;

-- smartphone android ordinati per peso
select s.nome, s.peso
from smartphone s
join os o on s.id_os = o.id
where lower(o.descrizione) = 'android'
order by s.peso;

-- smartphone samsung ordinati per peso
select s.nome, s.peso
from smartphone s
join marca m on s.id_marca = m.id
where lower(m.brand) = 'samsung'
order by s.peso;

-- smartphone con descrizione os e brand samsung o apple
select s.nome, o.descrizione as sistema_operativo, m.brand
from smartphone s
join os o on s.id_os = o.id
join marca m on s.id_marca = m.id
where lower(m.brand) in ('samsung', 'apple');

-- numero smartphone con 2gb ram per os
select o.descrizione, count(*)
from smartphone s
join os o on s.id_os = o.id
where s.ram = '2Gb'
group by o.descrizione;

-- smartphone con windows phone 8
select count(*)
from smartphone s
join os o on s.id_os = o.id
where lower(o.descrizione) = 'windows phone 8';

-- smartphone che non hanno android
select count(*)
from smartphone s
join os o on s.id_os = o.id
where lower(o.descrizione) <> 'android';

-- conteggio smartphone per os
select o.descrizione, count(*)
from smartphone s
join os o on s.id_os = o.id
group by o.descrizione;

-- conteggio smartphone per os ordinato per descrizione
select o.descrizione, count(*)
from smartphone s
join os o on s.id_os = o.id
group by o.descrizione
order by o.descrizione;

-- os con più di 5 smartphone con ppi > 400
select o.descrizione, count(*)
from smartphone s
join os o on s.id_os = o.id
where s.display_ppi > 400
group by o.descrizione
having count(*) > 5;

-- os con somma peso smartphone > 500g
select o.descrizione, sum(s.peso)
from smartphone s
join os o on s.id_os = o.id
group by o.descrizione
having sum(s.peso) > 500;

-- media peso per sistema operativo
select o.descrizione, avg(s.peso)
from smartphone s
join os o on s.id_os = o.id
group by o.descrizione;

-- smartphone con risoluzione 1080x1920 per brand
select m.brand, count(*)
from smartphone s
join marca m on s.id_marca = m.id
where s.display_resolution = '1080x1920'
group by m.brand;

-- smartphone android per brand
select m.brand, count(*)
from smartphone s
join marca m on s.id_marca = m.id
join os o on s.id_os = o.id
where lower(o.descrizione) = 'android'
group by m.brand;

-- smartphone android più leggero
select s.nome, s.peso
from smartphone s
join os o on s.id_os = o.id
where lower(o.descrizione) = 'android'
order by s.peso
limit 1;

-- smartphone android con ppi maggiore
select s.nome, s.display_ppi
from smartphone s
join os o on s.id_os = o.id
where lower(o.descrizione) = 'android'
order by s.display_ppi desc
limit 1;

-- smartphone windows phone 8 più pesante
select s.nome, s.peso
from smartphone s
join os o on s.id_os = o.id
where lower(o.descrizione) = 'windows phone 8'
order by s.peso desc
limit 1;

-- smartphone più pesante per ogni os
select nome, peso, descrizione
from (
  select s.nome, s.peso, o.descrizione,
         row_number() over (partition by o.id order by s.peso desc) as rn
  from smartphone s
  join os o on s.id_os = o.id
) sub
where rn = 1;

-- smartphone android dual-core più leggero
select s.nome, s.peso
from smartphone s
join os o on s.id_os = o.id
where lower(o.descrizione) = 'android'
  and lower(s.cpu) like '%dual-core%'
order by s.peso
limit 1;