delimiter $$
CREATE DEFINER=CURRENT_USER PROCEDURE `youhui`(IN num int, IN rmb int, IN product int, IN tag varchar(50))
BEGIN
declare i int default 1;
while i<=num do
INSERT INTO `tblpromotions`
( `code`, `type`, `recurring`,`value`, `cycles`, `appliesto`, `requires`,  `startdate`, 

`expirationdate`, `maxuses`,`newsignups`)
VALUES 
(concat(tag,getrand(8)),'Fixed Amount',0,rmb,'', product, product, now(), DATE_ADD(now(), INTERVAL 1 YEAR),1,0);
set i=i+1;
end while;
END $$
delimiter ;
