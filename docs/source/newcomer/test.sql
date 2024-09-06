INSERT INTO authors
(name_last,name_first,country)
VALUES
('Kafka','Frans','US'),
('Nicholas','Sparks','NL'),
('Stephen','Kingrks','AU'),
('ChengEn','Wu','CN'),
('NaiAn','Shi','CN'),
('GuanZhong','Luo','CN'),
('Dan','Brown','BR'),
('XueQin','Cao','CN');

alter table 
authors 
change id AuthorID int(11);

SELECT Title,
CONCAT(name_first,' ',name_last) AS author 
FROM books 
JOIN authors USING (AuthorID) 
WHERE name_first LIKE 'Frans%' 
ORDER BY Title DESC 
LIMIT 2;

SELECT SQL_CALC_FOUND_ROWS SeriesID,
CONCAT(name_first,' ',name_last) AS author 
FROM books 
JOIN authors on AuthorID = id
WHERE name_first LIKE 'Fra%' 
ORDER BY Title DESC
LIMIT 2;

SELECT SeriesID,
CONCAT(name_first,' ',name_last) AS author 
FROM books 
JOIN authors on AuthorID = id
WHERE name_first LIKE 'Fra%' 
ORDER BY Title DESC
LIMIT 2;


SELECT A.Title,
CONCAT(B.name_first,' ',B.name_last) AS author
FROM books A
JOIN authors B on A.AuthorID = B.id
WHERE B.name_first LIKE 'Fra%' 
ORDER BY A.Title DESC 
LIMIT 2;

SELECT Title,isbn,
CONCAT(name_first,' ',name_last) AS author
FROM books
JOIN authors ON books.AuthorID=authors.id
JOIN series ON books.SeriesID=series.id
WHERE name_first LIKE 'Fran%'
ORDER BY Title DESC
LIMIT 2;

