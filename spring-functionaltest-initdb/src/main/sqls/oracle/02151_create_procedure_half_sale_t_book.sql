CREATE OR REPLACE PROCEDURE HALF_SALE
IS
BEGIN
    UPDATE t_book t1 SET price = (SELECT price/2 FROM t_book t2 WHERE t1.book_id = t2.book_id);
END;

