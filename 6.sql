
INSERT INTO COMPETITION(competition_nm, town_nm, competition_dttm, participation_cost_amt, degree_txt)
    VALUES('Black Sea', 'Anapa', '2013-06-30', 200, 'Diploma 1')
;
INSERT INTO ACT (genre_code, act_nm, duration_minute_amt, age_participant_min_no, age_participant_max_no)
    VALUES ('piano', 'Rain', '00:05:12', 14, 16)
;
SELECT first_nm
  , last_nm
  , phone_no
FROM PARTY
;
SELECT AVG(participation_cost_amt)
FROM COMPETITION
;
UPDATE COMPETITION
SET participation_cost_amt = 1000
WHERE participation_cost_amt < 1000
;
UPDATE ACT
SET genre_code = 'music'
WHERE genre_code = 'piano'
OR genre_code = 'song'
;
DELETE FROM COMPETITION
WHERE participation_cost_amt > 1400
;
DELETE  FROM ACT
WHERE age_participant_max_no > 18
OR age_participant_min_no < 12
;
