USE sample_db;

DROP TABLE IF EXISTS item;
CREATE TABLE item
(
  item_id SERIAL PRIMARY KEY,
  name VARCHAR(50),
  price INT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO item (name, price) VALUES ('apple', 100);
INSERT INTO item (name, price) VALUES ('orange', 200);