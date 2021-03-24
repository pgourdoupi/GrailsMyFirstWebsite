CREATE TABLE users(
   user_id BIGSERIAL PRIMARY KEY NOT NULL,
   login VARCHAR(50),
   password VARCHAR(50),
   is_active BOOLEAN
);
