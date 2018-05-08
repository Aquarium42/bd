
INSERT INTO ACT(genre_code, act_nm, duration_minute_amt, age_participant_min_no, age_participant_max_no)
    VALUES ('dance', 'Love like a scarf', '02:50', 13, 25)
      , ('song', 'Russia', '00:02:12', 13, 15)
      , ('dance', 'Cats and mouse', '00:03:15', 7, 10)
      , ('theatre', 'Where is no winter', '00:46:01', 15, 18)
      , ('song', 'Smile', '00:03:45', 10, 12)
      , ('piano', '40 Mozart Symphony', '00:02:15', 15, 16)
      , ('dance', 'Night witches', '00:03:50', 16, 20)
;
INSERT INTO PARTY(document_no, type_code, first_nm, last_nm, middle_nm, phone_no, gender_code, birth_dttm, education_txt)
    VALUES ('3212259132', 'child', 'Nina', 'Petrova', 'Alexandrovna', '89505978645', 'w', '2001-01-15', 'school №16')
      , ('3216894562', 'child', 'Olga','Ivanova', 'Nikolaevna', '895761345260', 'w', '1998-01-12', 'MIPT' )
      , ('3213564561', 'child', 'Olga','Salanova', 'Victorovna', '890365412356', 'w', '2003-04-05', 'school №123' )
      , ('3201123502', 'parent', 'Elizaveta','Ivanova', 'Olegovna', '89545054651', 'w', '1972-04-06', 'Vladivostok State University of Economics and Service ' )
      , ('3216894562', 'parent', 'Marina','Markina', 'Kirillovna', '89041239815', 'w', '1980-09-30', 'Penza State University' )
      , ('3216894562', 'producer', 'Irina','Aliksanova', 'Timofeevna', '89779452365', 'w', '1981-02-28', 'Moscow State Academy of Physical Education' )
      , ('3216894562', 'director', 'Darina','Dikova', 'Davidovna', '89774985632', 'w', '1970-12-13', 'Moscow State Academy of Physical Education ' )
      , ('3216894562', 'director', 'Nikita','Lomin', 'Romanovich', '890355645246', 'm', '1976-11-15', 'Krasnodar State University of Culture and Arts ' )
      , ('3216894562', 'producer', 'Alina','Morevskaya', 'Nikolaevna', '895656645260', 'w', '1964-11-09', 'Omsk State University of Culture and Arts ' )
      , ('3216894562', 'child', 'Alexey','Pokosov', 'Sergeevich', '89643256146', 'm', '2010-01-01', 'liceum 26' )
;
INSERT INTO COLLECTIVE(collective_nm, director_id, creation_dttm, town_nm, achievements_txt)
    VALUES ('You and I', 7, '1998-04-10', 'Prokopevsk', 'Diploma 1,2,3, laureates 1, 2, 3 degrees')
      , ('Magic', 8, '2015-12-12', 'Moscow', NULL )
      , ('Sea of smile', 8, '2015-12-13', 'Moscow', NULL )
      , ('Magic', 8, '2015-12-14', 'Moscow', NULL )
      , ('Magic', 7, '2018-09-10', 'Kemerovo', NULL )
;
INSERT INTO COMPETITION(competition_nm, town_nm, competition_dttm, participation_cost_amt, degree_txt)
    VALUES ('You are start', 'Moscow', '2018-12-11', 1500, 'dimloma 1-3')
      , ('Bright smile', 'Moscow', '2013-09-24', 1200, NULL)
      , ('Smile', 'Penza', '2018-06-12', 500, NULL)
      , ('Summer in Omsk', 'Omsk', '2015-06-25', 100, NULL)
      , ('Success', 'Kemerovo', '2018-07-17', 100, 'diploma 1-3')
;
INSERT INTO COLLECTIVE_X_ACT(collective_id, act_id)
    VALUES (1,1), (1,3), (2,3), (3,2), (3,5), (4,6), (5,7), (5,4)
;
INSERT INTO COLLECTIVE_X_CHILD(collective_id, child_id)
    VALUES (1,10), (2,10), (3,3), (4,2), (5,1), (5, 2)
;
INSERT INTO ACT_X_CHILD(child_id, act_id)
    VALUES (1,7),(2,4), (3,2), (10,3), (10,1)
;
INSERT INTO ACT_X_COMPETITION(act_id, competition_id)
    VALUES (1,1), (1,2), (1,3), (3,3), (2,4)
;
INSERT INTO ACT_X_PRODUCER(act_id, producer_id)
    VALUES (1, 9), (2, 9), (3, 6), (4, 6), (5, 6)
;
INSERT INTO PARTY_X_PARTY(parent_id, child_id)
    VALUES (4,2), (4,10), (5,1), (5,2), (4,3)
;
