CREATE TABLE users (id INTEGER PRIMARY KEY, name TEXT, email TEXT);
CREATE TABLE posts (
    id INTEGER PRIMARY KEY, author_id INTEGER, title TEXT,
    body TEXT, created DATE, published INTEGER DEFAULT 0,
    FOREIGN KEY (author_id) REFERENCES users(id));
CREATE TABLE comments (
    id INTEGER PRIMARY KEY, post_id INTEGER, user_id INTEGER,
    text TEXT, created DATE,
    FOREIGN KEY (post_id) REFERENCES posts(id),
    FOREIGN KEY (user_id) REFERENCES users(id));
CREATE TABLE tags (id INTEGER PRIMARY KEY, name TEXT);
CREATE TABLE post_tags (post_id INTEGER, tag_id INTEGER);
