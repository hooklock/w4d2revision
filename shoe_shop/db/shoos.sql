DROP TABLE shoes;

CREATE TABLE shoes(
  id SERIAL4 primary key,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  address VARCHAR(255),
  size VARCHAR(255),
  quantity INT2
);