CREATE DATABSE IF NOT EXISTS `catalog`;

-- Create item table
CREATE TABLE IF NOT EXISTS `items` (
  id INT GENERATED ALWAYS AS IDENTITY,
  genre_id INT,
  label_id INT,
  publish_date DATE,
  author_id INT,
  archived BOOLEAN,
  PRIMARY KEY (id),
);

-- Create games table
CREATE TABLE games (
  id INT GENERATED ALWAYS AS IDENTITY,
  multiplayer VARCHAR(255),
  last_played_at DATE,
  PRIMARY KEY (id),
);
-- Create authors table
CREATE TABLE authors (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  first_name VARCHAR(255),
  last_name VARCHAR(255),
  PRIMARY KEY (id)
);

-- Create books table
CREATE TABLE books (
  id INT,
  title VARCHAR(100),
  publisher VARCHAR(100),
  cover_state VARCHAR(100),
);

-- create labels table
CREATE TABLE labels (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  title VARCHAR(100),
  color VARCHAR(100),
  PRIMARY KEY (id)
);

-- create music album table
CREATE TABLE music albums (
  id INT
  on_spotify BOOLEAN,
);

-- create genres table
CREATE TABLE genres (
  id INT PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  name VARCHAR(100),
  PRIMARY KEY (id)
);

CREATE INDEX label_id_index ON item(label_id);
CREATE INDEX author_id_index ON item(author_id);
CREATE INDEX genres_id_index ON item(genre_id );
CREATE INDEX item_id_index ON music albums(item_id );
CREATE INDEX item_id_index ON music books(item_id );
