create table pokedex
(
    pokeNum     int auto_increment
        primary key,
    monsterName varchar(20) not null,
    skill1Name  varchar(20) not null,
    skill1Dmg   int         not null,
    skill2Name  varchar(20) null,
    skill2Dmg   int         null,
    maxHp       int         not null,
    evolNum     int         null,
    type        varchar(10) not null,
    constraint evolve_fk
        foreign key (evolNum) references pokedex (pokeNum)
);

create table pokemon
(
    id         int primary key auto_increment,
    nickName   varchar(20) not null,
    name       varchar(20) not null,
    pokeDexNum int         not null,
    owner      int         not null,
    FOREIGN KEY (pokeDexNum) REFERENCES pokeDex (pokeNum),
    foreign key (owner) references pokemonTrainer (id)
);

create table pokemonTrainer
(
    id   int primary key auto_increment,
    name varchar(20) not null
);

CREATE TABLE battle_res
(
    battle_ID        INT PRIMARY KEY,
    trainer_ID       INT,
    match_trainer_ID INT,
    win_trainer_ID   INT,
    FOREIGN KEY (trainer_ID) REFERENCES pokemonTrainer (id),
    FOREIGN KEY (match_trainer_ID) REFERENCES pokemonTrainer (id),
    FOREIGN KEY (win_trainer_ID) REFERENCES pokemonTrainer (id)
);