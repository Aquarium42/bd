  CREATE OR REPLACE FUNCTION trigger_s_after() RETURNS trigger AS'
    BEGIN IF is_director_id(new.type_code, new.party_id) IS NOT NULL
    THEN
INSERT INTO COLLECTIVE(collective_nm, director_id, creation_dttm, town_nm, achievements_txt)
    VALUES  (''New collective'', new.party_id, ''2018-01-01'', NULL, NULL );
END if ;RETURN old; end ;
' LANGUAGE plpgsql;

CREATE FUNCTION is_director_id(VARCHAR(20), integer)
  RETURNS integer AS'
  BEGIN IF $1 = ''director''
   THEN RETURN $2;
  ELSE RETURN NULL;
   END IF; END;
  'LANGUAGE plpgsql;


CREATE  TRIGGER tr_
  AFTER INSERT ON Party FOR EACH ROW
  EXECUTE PROCEDURE trigger_s_after();


INSERT INTO PARTY(document_no, type_code, first_nm, last_nm, middle_nm, phone_no, gender_code, birth_dttm, education_txt)
    VALUES ('2356987456', 'director', 'Irina', 'Moskova', 'Alexandrovna', '89775978645', 'w', '2001-01-15', 'school №635')
    , ('2562377912', 'child', 'Larisa', 'Lavina', 'Alexandrovna', '89585978645', 'w', '2001-01-15', 'school №799');

