-- 아주 기본적인 데이터 편집 쿼리
-- 연습용 샘플
use pokemon_game;
select * from pokeDex;
select * from pokemon;
select * from pokemontrainer;
select * from battle_res;
select monsterName from pokedex;
select count(owner) from pokemon
group by owner;

select * from pokemon,pokemontrainer p
where owner=p.id;

select id from pokemontrainer
where name='Trainer1';

