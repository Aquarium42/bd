CREATE VIEW phones
  AS
    SELECT
      first_nm,
      last_nm,
      phone_no
    FROM PARTY
    WHERE phone_no NOTNULL
    ;
    
CREATE VIEW dance
  AS
    SELECT
      act_nm,
      (CASE
       WHEN age_participant_min_no < 12
         THEN age_participant_min_no
       ELSE 12
       END) AS age_no,
      age_participant_max_no
    FROM ACT
    WHERE genre_code = 'dance' AND age_participant_max_no >= 12
    ;

CREATE VIEW collectives
  AS
    SELECT
      collective_nm,
      (CASE
       WHEN director_id <> 0
         THEN 0
       ELSE 0
       END) as director_id
       , town_nm
    FROM COLLECTIVE
    ;

CREATE VIEW competitions_advertising
  AS
    SELECT
      competition_nm
      , (CASE
       WHEN town_nm <> 'Moscow'
         THEN 'Moscow'
       ELSE town_nm
       END) as town_nm
      , (CASE
       WHEN participation_cost_amt >= 1000
         THEN 100
       ELSE participation_cost_amt
       END) as price
    FROM COMPETITION;

