/*1.1 Вывести только имена игроков, которые не имеют достижений, используя подзапрос.*/

SELECT nickname 
FROM player 
WHERE id NOT IN (
SELECT player_id 
FROM achievement 
WHERE player_id IS NOT NULL
);

/*1.2 Вывести только имена игроков, которые не имеют достижений (без использования подзапроса).*/

SELECT nickname 
FROM player 
LEFT JOIN achievement ON player.id = achievement.player_id 
WHERE achievement.player_id IS NULL;

/*2 Вывести суммарное значение очков и имена всех игроков, у которых сумма очков по всем достижениям больше 800.*/

SELECT nickname, sum(score.amount) as amount 
FROM player 
JOIN achievement ON player.id = achievement.player_id 
JOIN score ON achievement.id = score.achievement_id 
GROUP BY player.id 
HAVING sum(score.amount) > 800

/* 3. Получить информацию о игроке(ах), набравшим самое большое количество очков в сумме. 
Необходимо вывести имя игрока и количество очков. */

SELECT player.*
FROM player 
JOIN achievement ON player.id = achievement.player_id 
JOIN score ON achievement.id = score.achievement_id
GROUP BY player.id
ORDER BY sum(score.amount) DESC LIMIT 1; 

/* 4. Подсчитать для каждой гильдии сумму всех очков всех ее игроков. 
Вывести названия гильдий, у которых есть очки, и кол-во их очков по убыванию, 
начиная  от самого наибольшего к наименьшему. */

SELECT guild.name, sum(score.amount) as amount
FROM guild 
JOIN player ON guild.id = player.guild_id 
JOIN achievement ON player.id = achievement.player_id
JOIN score ON achievement.id = score.achievement_id
GROUP BY guild.id
ORDER BY amount DESC;

/* 5. Вывести имя игрока и его гильдию, фамилия которого начинается с “B” и ее длина больше одного символа. 
Игроки могут не иметь фамилии, но если она есть, то всегда имеет шаблон(Имя Фамилия). */

SELECT player.nickname, guild.*
FROM player 
JOIN guild ON player.guild_id = guild.id
WHERE player.nickname Like '% B_%';


/* 6. Вывести всех игроков, которые состоят в какой-то гильдии, вместе с именем этой гильдии.  */

SELECT player.*, guild.name 
FROM player 
JOIN guild ON player.guild_id = guild.id;


/* 7. Вывести в алфавитном порядке названия всех уникальных достижений, которые были у игроков. */

SELECT DISTINCT achievement.name 
FROM achievement 
ORDER BY achievement.name;


