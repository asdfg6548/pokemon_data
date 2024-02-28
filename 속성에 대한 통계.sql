SELECT
    type,count(type)
FROM
    pokemon AS po
JOIN
    pokedex AS pd ON po.pokeDexNum = pd.pokeNum
WHERE
    po.owner = 1
group by type;