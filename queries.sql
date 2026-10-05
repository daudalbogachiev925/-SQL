-- Посты с числом комментариев
SELECT p.title, COUNT(c.id) AS comments
FROM posts p LEFT JOIN comments c ON p.id=c.post_id
GROUP BY p.id ORDER BY comments DESC;

-- Активные комментаторы
SELECT u.name, COUNT(*) AS n FROM comments c
JOIN users u ON c.user_id=u.id
GROUP BY u.id ORDER BY n DESC;

-- Посты по тегам
SELECT t.name, COUNT(*) FROM post_tags pt
JOIN tags t ON pt.tag_id=t.id
GROUP BY t.id;

-- Только опубликованные
SELECT title FROM posts WHERE published=1;
