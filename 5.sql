
SELECT first_nm
  , last_nm
FROM PARTY
  INNER JOIN
  COLLECTIVE_X_CHILD
  ON COLLECTIVE_X_CHILD.child_id = PARTY.party_id
INNER JOIN
  COLLECTIVE
  ON COLLECTIVE.collective_id=COLLECTIVE_X_CHILD.collective_id
WHERE COLLECTIVE.town_nm = 'Moscow'
;

SELECT COUNT(act_nm)
FROM COMPETITION AS a
INNER JOIN
  ACT_X_COMPETITION AS b
  ON a.competition_id = b.competition_id
INNER JOIN
  ACT AS c
  ON b.act_id = c.act_id
WHERE c.genre_code ='dance'
OR
  c.genre_code = 'song'
;

SELECT competition_nm, COUNT(act_id)
FROM COMPETITION AS a
INNER JOIN
  ACT_X_COMPETITION AS b
  ON a.competition_id = b.competition_id
GROUP BY competition_nm
HAVING competition_nm LIKE '%mile%' ;

SELECT first_nm
, middle_nm
, last_nm
FROM PARTY
WHERE gender_code = 'w'
;

SELECT DISTINCT first_nm
, last_nm
, collective_nm
FROM PARTY
INNER JOIN
  COLLECTIVE
  ON COLLECTIVE.director_id = PARTY.party_id
WHERE gender_code = 'm'
;
