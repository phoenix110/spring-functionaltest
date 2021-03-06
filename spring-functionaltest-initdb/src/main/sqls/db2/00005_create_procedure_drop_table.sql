--------------------
-- DROP TABLES --
--------------------
CREATE OR REPLACE PROCEDURE DROP_TABLE(IN tableName VARCHAR(50))
LANGUAGE SQL
BEGIN
    DECLARE cnt INTEGER DEFAULT 0;

    SELECT COUNT(*) INTO cnt FROM USER_TABLES WHERE TABLE_NAME = UPPER(tableName);
    if cnt > 0 then
        execute immediate 'DROP TABLE ' || UPPER(tableName);
    end if;
END
