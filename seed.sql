DROP TABLE IF EXISTS groups;

CREATE TABLE groups (
  id SERIAL PRIMARY KEY,
  group_letter VARCHAR(255),
  team_1 VARCHAR(255),
  team_2 VARCHAR(255),
  team_3 VARCHAR(255),
  team_4 VARCHAR(255),
  team_1_flag VARCHAR(255),
  team_2_flag VARCHAR(255),
  team_3_flag VARCHAR(255),
  team_4_flag VARCHAR(255)
);

INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('A', 'Egypt', 'Russia', 'Saudi Arabia', 'Uruguay', '/images/egypt.png', '/images/russia.png', '/images/saudi_arabia.png', '/images/uruguay.png');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('B', 'Iran', 'Morocco', 'Portugal', 'Spain', '/images/iran.png', '/images/morocco.png', '/images/portugal.png', '/images/spain.png');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('C', 'Australia', 'Denmark', 'France', 'Peru', '/images/australia.png', '/images/denmark.jpeg', '/images/france.png', '/images/peru.png');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('D', 'Argentina', 'Croatia', 'Iceland', 'Nigeria', '/images/argentina.png', '/images/croatia.png', '/images/iceland.png', '/images/nigeria.png');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('E', 'Brazil', 'Costa Rica', 'Serbia', 'Switzerland', '/images/brazil.png', '/images/costa_rica.png', '/images/serbia.png', '/images/switzerland.png');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('F', 'Germany', 'South Korea', 'Mexico', 'Sweden', '/images/germany.png', '/images/south_korea.png', '/images/mexico.png', '/images/sweden.png');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('G', 'Belgium', 'England', 'Panama', 'Tunisia', '/images/belgium.png', '/images/england.png', '/images/panama.png', '/images/tunisia.png');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4, team_1_flag, team_2_flag, team_3_flag, team_4_flag) VALUES ('H', 'Columbia', 'Japan', 'Poland', 'Senegal', '/images/columbia.png', '/images/japan.png', '/images/poland.png', '/images/senegal.png');
