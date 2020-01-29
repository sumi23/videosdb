CREATE DEFINER=`root`@`localhost` PROCEDURE `rollback_transaction_on_insert`(IN id int,IN name varchar(20),
IN url  varchar(50),IN descr text
)
BEGIN
DECLARE exit handler for SQLEXCEPTION
        BEGIN
          set @flag=0;
        ROLLBACK;
        select @flag;
    END;
    DECLARE exit handler for SQLWARNING
        BEGIN
         set @flag=0;
		 ROLLBACK;
        select @flag;
    END;
START transaction;
 insert into reference_url(id,name,url,description) values(id,name,url,descr);
     set @flag=1;
 COMMIT;
select @flag;
END