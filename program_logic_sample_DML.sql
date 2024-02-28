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



SELECT *
FROM pokemon
JOIN pokemontrainer p ON pokemon.owner = p.id
WHERE owner = (SELECT id FROM pokemontrainer WHERE name = 'Trainer1');

SELECT po.name,po.owner,pt.name, po.nickName
FROM pokemon po, pokemontrainer pt
WHERE po.owner=pt.id and pt.name = 'Trainer1';
-- 특정 트레이너가 보유한 모든 포켓몬을 출력하는 쿼리 작성

SELECT pokemon.nickName,pokemon.name, pd.type
FROM pokemon
JOIN pokedex pd ON pokemon.pokeDexNum = pd.pokeNum
WHERE pokemon.pokeDexNum in (SELECT pokeNum FROM pokedex WHERE type = '물');

SELECT pokemon.nickName, pokemon.name, pokedex.type
FROM pokemon, pokedex
WHERE pokemon.pokeDexNum = pokedex.pokeNum AND pokedex.type = '물';
-- 특정 속성 type 의 포켓몬을 모두 출력하는 쿼리 작성
