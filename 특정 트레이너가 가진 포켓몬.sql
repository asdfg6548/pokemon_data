use pokemon_game;
SELECT *
FROM pokemon
JOIN pokemontrainer p ON pokemon.owner = p.id
WHERE owner = (SELECT id FROM pokemontrainer WHERE name = 'Trainer1');

SELECT po.name,po.owner,pt.name, po.nickName
FROM pokemon po, pokemontrainer pt
WHERE po.owner=pt.id and pt.name = 'Trainer1';
-- 특정 트레이너가 보유한 모든 포켓몬을 출력하는 쿼리 작성