CREATE TABLE social_media (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(150) NOT NULL,
    last_name VARCHAR(150) NOT NULL
);
CREATE TABLE friendships (
    user_id INT REFERENCES social_media (id) ON DELETE CASCADE ON UPDATE CASCADE,
    friend_id INT REFERENCES social_media (id) ON DELETE CASCADE ON UPDATE CASCADE,
    CHECK (user_id < friend_id)
);
-- with adding CHECK constraint to table, we are enforcing a smaller id to go in user_id column and bigger id to go in friend_id column. hence we can ensure that there is no same relationship in two different rows. (example: (1,2) and (2,1))