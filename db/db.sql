CREATE DATABASE config_lesson ENCODING 'UTF-8';

CREATE TABLE IF NOT EXISTS engines (
  id    SERIAL UNIQUE      NOT NULL,
  model VARCHAR(25)        NOT NULL,
  power INTEGER            NOT NULL,
  PRIMARY KEY (model)
);

INSERT INTO engines (id, model, power) VALUES (DEFAULT, 'engine_model_01', 1250);
INSERT INTO engines (id, model, power) VALUES (DEFAULT, 'engine_model_02', 2820);


CREATE TABLE IF NOT EXISTS cars (
  id        SERIAL UNIQUE,
  mark      VARCHAR(25) NOT NULL,
  model     VARCHAR(25) PRIMARY KEY,
  engine_id INTEGER     NOT NULL,
  FOREIGN KEY (engine_id) REFERENCES engines (id)
);

INSERT INTO cars (id, mark, model, engine_id) VALUES (DEFAULT, 'car_mark_01', 'car_model_01', 1);
INSERT INTO cars (id, mark, model, engine_id) VALUES (DEFAULT, 'car_mark_02', 'car_model_02', 2);