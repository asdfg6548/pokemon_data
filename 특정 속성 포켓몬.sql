use pokemon_game;
SELECT pokemon.nickName,pokemon.name, pd.type
FROM pokemon
JOIN pokedex pd ON pokemon.pokeDexNum = pd.pokeNum
WHERE pokemon.pokeDexNum in (SELECT pokeNum FROM pokedex WHERE type = '물');

SELECT pokemon.nickName, pokemon.name, pokedex.type
FROM pokemon, pokedex
WHERE pokemon.pokeDexNum = pokedex.pokeNum AND pokedex.type = '물';
-- 특정 속성 type 의 포켓몬을 모두 출력하는 쿼리 작성
