DROP TABLE IF EXISTS groups;

CREATE TABLE groups (
  id SERIAL PRIMARY KEY,
  group_letter VARCHAR(255),
  team_1 VARCHAR(255),
  team_2 VARCHAR(255),
  team_3 VARCHAR(255),
  team_4 VARCHAR(255)
);

INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4) VALUES ('A', 'Egypt', 'Russia', 'Saudi Arabia', 'Uruguay');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4) VALUES ('B', 'Iran', 'Morocco', 'Portugal', 'Spain');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4) VALUES ('C', 'Australia', 'Denmark', 'France', 'Peru');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4) VALUES ('D', 'Argentina', 'Croatia', 'Iceland', 'Nigeria');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4) VALUES ('E', 'Brazil', 'Costa Rica', 'Serbia', 'Switzerland');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4) VALUES ('F', 'Germany', 'South Korea', 'Mexico', 'Sweden');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4) VALUES ('G', 'Belgium', 'England', 'Panama', 'Tunisia');
INSERT INTO groups (group_letter, team_1, team_2, team_3, team_4) VALUES ('H', 'Columbia', 'Japan', 'Poland', 'Senegal');
