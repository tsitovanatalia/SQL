CREATE TABLE achievement (
 id integer NOT NULL,
 name varchar(20) NOT NULL,
 player_id integer NOT NULL,
 PRIMARY KEY (id)
);

CREATE TABLE player (
 id integer NOT NULL,
 nickname varchar(30) NOT NULL,
 date_of_start_game datetime NOT NULL,
 guild_id integer default NULL,
 PRIMARY KEY (id)
);

CREATE TABLE score (
 id integer NOT NULL,
 amount numeric(10,2) NOT NULL,
 achievement_id integer NOT NULL,
 description varchar(100) default NULL,
 PRIMARY KEY (id)
);

CREATE TABLE guild (
 id integer NOT NULL,
 name varchar(30) NOT NULL,
 PRIMARY KEY (id)
);

insert into guild (id, name) values (1, 'Roal Word');
insert into guild (id, name) values (2, 'Open My Game');
insert into guild (id, name) values (3, 'Evolution');
insert into guild (id, name) values (4, 'Witch');
insert into guild (id, name) values (5, 'Vikings');
insert into guild (id, name) values (6, 'Legends');
insert into guild (id, name) values (7, 'Ninjas');
insert into guild (id, name) values (8, 'Best of the Best');


insert into player (id, nickname, date_of_start_game, guild_id) values (4, 'Jonny B', '2022-01-01', 1);
insert into player (id, nickname, date_of_start_game, guild_id) values (5, 'Olivia C', '2021-07-30', 1);
insert into player (id, nickname, date_of_start_game, guild_id) values (6, 'Oliver Bt', '2022-01-01', 3);
insert into player (id, nickname, date_of_start_game, guild_id) values (7, 'Kanako', '2022-09-18', 4);
insert into player (id, nickname, date_of_start_game, guild_id) values (8, 'Amelia', '2022-10-18', 5);
insert into player (id, nickname, date_of_start_game, guild_id) values (9, 'Emma Dr', '2021-01-18', 5);
insert into player (id, nickname, date_of_start_game, guild_id) values (10, 'Yamada F', '2020-02-20', 5);
insert into player (id, nickname, date_of_start_game, guild_id) values (11, 'Henry', '2022-03-17', 7);
insert into player (id, nickname, date_of_start_game, guild_id) values (12, 'Ricardo D N', '2019-06-10', 7);
insert into player (id, nickname, date_of_start_game, guild_id) values (13, 'James', '2019-06-06', null);


insert into achievement (id, name, player_id) values (7, '5 Pizz', 5);
insert into achievement (id, name, player_id) values (8, '10 Words', 6);
insert into achievement (id, name, player_id) values (9, 'Level 100 done', 6);
insert into achievement (id, name, player_id) values (10, 'Level 50 done', 4);
insert into achievement (id, name, player_id) values (11, '10 Words', 7);
insert into achievement (id, name, player_id) values (12, 'Level 100 done', 8);
insert into achievement (id, name, player_id) values (13, '5 Pizz', 6);
insert into achievement (id, name, player_id) values (14, '10 Words', 10);
insert into achievement (id, name, player_id) values (15, 'Level 100 done', 11);
insert into achievement (id, name, player_id) values (16, 'Level 100 done', 12);
insert into achievement (id, name, player_id) values (17, '5 Pizz', 5);
insert into achievement (id, name, player_id) values (18, '10 Words', 14);
insert into achievement (id, name, player_id) values (19, 'Level 100 done', 14);


insert into score (id, amount, achievement_id, description) values (1, 654, 8, 'Nice'); 
insert into score (id, amount, achievement_id, description) values (2, 456, 9, 'Great');
insert into score (id, amount, achievement_id, description) values (3, 354, 8, 'Big');
insert into score (id, amount, achievement_id, description) values (4, 231, 7, '');
insert into score (id, amount, achievement_id, description) values (5, 879, 9, 'Excellent');
insert into score (id, amount, achievement_id, description) values (6, 956, 10, 'Good');
insert into score (id, amount, achievement_id, description) values (7, 324, 13, '');
insert into score (id, amount, achievement_id, description) values (8, 768, 12, 'Great');
insert into score (id, amount, achievement_id, description) values (9, 123, 12, '');
insert into score (id, amount, achievement_id, description) values (10, 321, 11, 'Big');
insert into score (id, amount, achievement_id, description) values (11, 908, 9, 'Excellent');
insert into score (id, amount, achievement_id, description) values (12, 12, 14, '');
insert into score (id, amount, achievement_id, description) values (13, 357, 7, 'Nice');
insert into score (id, amount, achievement_id, description) values (14, 479, 9, 'Good');
insert into score (id, amount, achievement_id, description) values (15, 653, 14, null);