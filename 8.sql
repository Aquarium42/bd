CREATE  VIEW age_of_producer
  AS
  SELECT first_nm
    , last_nm
    , (CASE
        WHEN birth_dttm < '1980-01-01'
          THEN '1985-01-01'
        ELSE birth_dttm
        END) as birth_dttm
  , act_nm
  , genre_code
  FROM ACT AS a
    INNER JOIN ACT_X_PRODUCER AS b
    ON a.act_id = b.act_id
  INNER JOIN PARTY AS c
    ON c.party_id = b.producer_id
  WHERE c.gender_code = 'w'
  ;
  CREATE VIEW parents
  AS
  SELECT act_nm
    , P2.first_nm
    , P2.last_nm
    , (CASE
        WHEN P2.education_txt  NOTNULL
        THEN NULL
        ELSE P2.education_txt
        END) as education
  FROM ACT
  INNER JOIN
    ACT_X_CHILD AXC ON ACT.act_id = AXC.act_id
  INNER JOIN PARTY P ON AXC.child_id = P.party_id
  INNER JOIN PARTY_X_PARTY P3 ON P.party_id = P3.child_id
  INNER JOIN PARTY P2 ON P3.parent_id = P2.party_id
  ;
