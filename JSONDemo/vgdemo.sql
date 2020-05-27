CREATE USER vgdemo
IDENTIFIED BY p4ssw0rd
DEFAULT TABLESPACE users
TEMPORARY TABLESPACE temp
QUOTA 10M ON users;

GRANT connect to vgdemo;
GRANT resource to vgdemo;
GRANT create session TO vgdemo;
GRANT create table TO vgdemo;
GRANT create view TO vgdemo;



conn vgdemo/p4ssw0rd

CREATE TABLE VIDEOGAME(
VGID NUMBER PRIMARY KEY,
VGNAME VARCHAR2(50),
VGMETASCORE NUMBER);

INSERT INTO VIDEOGAME VALUES (1,'MGS',9999);
commit;