SELECT p.id_murid, 
	m.name, 
    p.status AS pendidikan_terakhir, 
    m.time_create, 
    p.time_create AS time_update
FROM murid AS m
LEFT JOIN pendidikan AS p
	ON m.id = p.id_murid
WHERE p.time_create = (
	SELECT MAX(p2.time_create) AS time_update
    FROM pendidikan AS p2
    WHERE p2.id_murid = p.id_murid
);