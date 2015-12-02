USE obv1ous_development;

-- admin
UPDATE users SET admin = 1 WHERE username = "Gaviil";
UPDATE users SET admin = 1 WHERE username = "Cle61";
UPDATE users SET admin = 1 WHERE username = "Sweubi";

-- team member
INSERT INTO team_members (name,color,avatar_color, description,rank_cs,rank_lol,role_cs,role_lol)
VALUES("Gaviil","orange","orange","Pizza <3","Distinguished Master Guardian","Gold 5","Open Frag","support");

INSERT INTO team_members (name,color,avatar_color, description,rank_cs,rank_lol,role_cs,role_lol)
VALUES("Cle61","green","green"," ","Distinguished Master Guardian","","Support","");

INSERT INTO team_members (name,color,avatar_color, description,rank_cs,rank_lol,role_cs,role_lol)
VALUES("Sweubi","blue","blue"," ","Distinguished Master Guardian","Platine 4","Open Frag","ADC");

INSERT INTO team_members (name,color,avatar_color, description,rank_cs,rank_lol,role_cs,role_lol)
VALUES("Deadpool","yellow","red"," ","Distinguished Master Guardian","","AWP","");

INSERT INTO team_members (name,color,avatar_color, description,rank_cs,rank_lol,role_cs,role_lol)
VALUES("Haareen","yellow","yellow"," ","Master Guardian 1","","Support","");

INSERT INTO team_members (name,color,avatar_color, description,rank_cs,rank_lol,role_cs,role_lol)
VALUES("Rom","purple","pink"," ","Gold nova 2","","Support","");

-- game
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(1,"csgo");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(1,"lol");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(1,"block");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(1,"rocket");

INSERT INTO team_members_games (team_members_id,name_game)
VALUES(2,"csgo");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(2,"rust");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(2,"block");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(2,"rocket");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(2,"minecraft");

INSERT INTO team_members_games (team_members_id,name_game)
VALUES(3,"csgo");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(3,"lol");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(3,"rocket");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(3,"minecraft");

INSERT INTO team_members_games (team_members_id,name_game)
VALUES(4,"csgo");

INSERT INTO team_members_games (team_members_id,name_game)
VALUES(5,"csgo");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(5,"minecraft");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(5,"lol");

INSERT INTO team_members_games (team_members_id,name_game)
VALUES(6,"csgo");
INSERT INTO team_members_games (team_members_id,name_game)
VALUES(6,"minecraft");

-- weapon
INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(1,"AK-47");
INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(1,"M4A4");
INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(1,"Five-seven");

INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(2,"M4A1-S");
INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(2,"P90");
INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(2,"XM1014");

INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(3,"AK-47");
INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(3,"M4A4");
INSERT INTO team_members_weapons (team_members_id,name_weapon)
VALUES(3,"Five-seven");
