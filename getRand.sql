delimiter $$
CREATE DEFINER = CURRENT_USER FUNCTION `getRand` ( `counts` INTEGER ) RETURNS VARCHAR ( 20 ) BEGIN
DECLARE
	sTemp VARCHAR ( 20 );
DECLARE
	sTempCounts INTEGER;

SET sTemp = ROUND( ROUND( RAND( ), counts ) * ( POW( 10, counts ) ) );
IF
	( CHAR_LENGTH( sTemp ) < counts ) THEN
		
		SET sTempCounts = counts - CHAR_LENGTH( sTemp );
	
	SET sTemp = CONCAT( sTemp, RIGHT ( CONCAT( POW( 10, sTempCounts ), '' ), sTempCounts ) );
	
END IF;
IF
	( CHAR_LENGTH( sTemp ) > counts ) THEN
		
		SET sTemp = RIGHT ( sTemp, counts );
	
END IF;
RETURN sTemp;
END;
delimiter ;
