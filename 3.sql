CREATE TABLE PARTY(
  party_id SERIAL PRIMARY KEY
  , document_no VARCHAR(10) NOT NULL
  , type_code VARCHAR(20) NOT NULL
  , first_nm VARCHAR(30)
  , last_nm VARCHAR(30)
  , middle_nm VARCHAR(30)
  , phone_no VARCHAR(12)
  , gender_code VARCHAR(2)
  , birth_dttm DATE
  , education_txt VARCHAR(200)
);
CREATE TABLE ACT(
  act_id  SERIAL NOT NULL PRIMARY KEY
  , genre_code VARCHAR(30)
  , act_nm VARCHAR(30) NOT NULL
  , duration_minute_amt TIME
  , age_participant_min_no INTEGER
  , age_participant_max_no INTEGER
);
CREATE TABLE COMPETITION(
  competition_id SERIAL PRIMARY KEY
  , competition_nm VARCHAR(30) NOT NULL
  , town_nm VARCHAR(30)
  , competition_dttm DATE
  , participation_cost_amt INTEGER
  , degree_txt VARCHAR(30)
);
CREATE TABLE COLLECTIVE(
  collective_id SERIAL NOT NULL PRIMARY KEY
  , collective_nm VARCHAR(30) NOT NULL
  , director_id INTEGER NOT NULL
  , creation_dttm DATE
  , town_nm VARCHAR(30)
  , achievements_txt VARCHAR(300)
  , FOREIGN KEY (director_id) REFERENCES PARTY(party_id)
);
CREATE TABLE COLLECTIVE_X_CHILD(
  collective_id INTEGER NOT NULL
  , child_id INTEGER NOT NULL
  , PRIMARY KEY (collective_id, child_id)
);
CREATE  TABLE COLLECTIVE_X_ACT(
  collective_id INTEGER NOT NULL
  , act_id INTEGER NOT NULL
  , PRIMARY KEY (collective_id, act_id)
);
CREATE TABLE ACT_X_PRODUCER(
  act_id INTEGER NOT NULL
  , producer_id INTEGER NOT NULL
  , PRIMARY KEY (act_id, producer_id)
);
CREATE TABLE ACT_X_CHILD(
  child_id INTEGER NOT NULL
  , act_id INTEGER NOT NULL
  , PRIMARY KEY (child_id, act_id)
);
CREATE TABLE ACT_X_COMPETITION(
  act_id INTEGER NOT NULL
  , competition_id INTEGER NOT NULL
  , PRIMARY KEY (act_id, competition_id)
);
CREATE TABLE  PARTY_X_PARTY(
  parent_id INTEGER NOT NULL
  , child_id INTEGER NOT NULL
  , PRIMARY KEY (parent_id, child_id)
);