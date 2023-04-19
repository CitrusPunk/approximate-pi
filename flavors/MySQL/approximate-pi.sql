-- REQUIREMENTS:
-- MySQL Workbench - https://www.mysql.com/downloads/ 
-- 
-- USAGE:
-- 1. Open MySQL Workbench.
-- 2. Click on the "File" menu and select "Open SQL Script".
-- 3. Navigate to the location where your SQL file is located and select it.
-- 4. Connect to the MySQL server you want to use by clicking on the "Database" menu and selecting "Connect to Database".
-- 5. Select the connection you want to use from the list and enter the necessary credentials if prompted.
-- 6. Click on the "Execute" button or press the "Ctrl + Shift + Enter" keys to execute the SQL script.
-- 7. Wait for the script to finish executing. You will see the results of the script in the "Results" tab of the output panel.
--
-- Note that the exact steps may vary slightly depending on the version of MySQL Workbench you are using, but the general process should be similar.

-- constants
SET @iterations := 1000000;
SET @radius := 1.0;

-- create table to store random points
CREATE TABLE POINTS (
    x FLOAT NOT NULL,
    y FLOAT NOT NULL 
);

-- random generation procedure
DELIMITER //
CREATE PROCEDURE fill_table(IN its INT)
BEGIN
    DECLARE i INT DEFAULT 0;
    WHILE i < its DO
        INSERT INTO POINTS (x, y) VALUES ( @radius * (2 * RAND() - 1),  @radius * (2 * RAND() - 1));
        SET i = i + 1;
    END WHILE;
END //
DELIMITER ;

-- insert random points into table
CALL fill_table(@iterations);

-- count points inside the radius and calculate pi approximation
SELECT @in_circle := COUNT(*) FROM POINTS WHERE SQRT(x*x + y*y) < @radius;
SELECT 4 * @in_circle/@iterations as pi_approximation;


