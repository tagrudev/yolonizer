PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE users(username string, password string);
INSERT INTO "users" VALUES('admin','');
INSERT INTO "users" VALUES('user','');
COMMIT;
