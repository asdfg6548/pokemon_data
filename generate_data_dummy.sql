INSERT INTO pokemontrainer (name) VALUES
('Trainer1'),
('Trainer2'),
('Trainer3'),
('Trainer4'),
('Trainer5'),
('Trainer6'),
('Trainer7'),
('Trainer8'),
('Trainer9'),
('Trainer10'),
('Trainer11'),
('Trainer12'),
('Trainer13'),
('Trainer14'),
('Trainer15'),
('Trainer16'),
('Trainer17'),
('Trainer18'),
('Trainer19'),
('Trainer20');

-- 포켓몬 데이터 삽입
INSERT INTO pokedex (monsterName, skill1Name, skill1Dmg ,maxHp, type)
VALUES
('피카츄',  '몸통박치기', 30, 100, '전기'),
('이상해씨', '몸통박치기', 30, 120, '풀'),
('파이리',  '화염방사', 40, 110, '불'),
('꼬부기',  '하이드로 펌프', 35, 150, '물'),
('샌드슈류',  '암석 던지기', 40, 130, '땅'),
('나비부기',  '몸통박치기', 30, 120, '벌레'),
('피죤',  '몸통박치기', 30, 120, '독'),
('라따',  '몸통박치기', 30, 100, '노말'),
('피지우', '공중 뜀', 40, 110, '비행');

-- 진화형 데이터 삽입
INSERT INTO pokedex (monsterName, skill2Name, skill2Dmg, skill1Name, skill1Dmg, maxHp, type, evolNum)
VALUES
('라이츄', '번개', 40, '몸통박치기', 30, 120, '전기', 1), -- 피카츄의 진화형
('이상해풀', '잎날가르기', 35, '몸통박치기', 30, 150, '풀', 2), -- 이상해씨의 진화형
('리자몽', '화염폭풍', 50, '화염방사', 40, 130, '불', 3), -- 파이리의 진화형
('거북왕', '파도타기', 40, '하이드로 펌프', 35, 180, '물', 4), -- 꼬부기의 진화형
('딱정우리', '모래 폭풍', 40, '암석 던지기', 50, 150, '땅', 5), -- 샌드슈류의 진화형
('파피용', '번개', 50, '몸통박치기', 40, 140, '벌레', 6), -- 나비부기의 진화형
('아르bok', '독침', 50, '몸통박치기', 40, 150, '독', 7), -- 피죤의 진화형
('라테라스', '하품', 30, '몸통박치기', 40, 120, '노말', 8), -- 라따의 진화형
('피죤투', '날개치기', 40, '공중 뜀', 50, 130, '비행', 9); -- 피지우의 진화형


insert into pokemon(nickName, name,pokeDexNum,owner) values
('닉네임41', '피카츄', 1, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임42', '이상해씨', 2, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임43', '파이리', 3, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임44', '꼬부기', 4, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임45', '샌드슈류', 5, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임46', '나비부기', 6, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임47', '피죤', 7, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임48', '라따', 8, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임49', '피지우', 9, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임50', '라이츄', 10, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임51', '이상해풀', 11, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임52', '리자몽', 12, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임53', '거북왕', 13, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임54', '딱정우리', 14, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임55', '파피용', 15, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임56', '아르bok', 16, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임57', '라테라스', 17, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1)),
('닉네임58', '피죤투', 18, (SELECT id FROM pokemonTrainer ORDER BY RAND() LIMIT 1));