
-- get flights (base)
DROP TABLE IF EXISTS flights2.flights;
CREATE TABLE flights2.flights
SELECT * 
    FROM flights.flights
    limit 20;
    

 -- limit to airports connected to the flights sample  
DROP TABLE IF EXISTS flights2.airports;
CREATE TABLE flights2.airports
SELECT DISTINCT airports.*
    FROM flights.airports airports
    INNER JOIN flights2.flights flights
		ON flights.origin = airports.faa
        OR flights.dest = airports.faa;
        
        
-- limit to airlines connected to the flights sample   
DROP TABLE IF EXISTS flights2.airlines;
CREATE TABLE flights2.airlines
SELECT DISTINCT airlines.*
    FROM flights.airlines airlines
    INNER JOIN flights2.flights flights
		ON flights.carrier = airlines.carrier;     
        
        
/* removed to reduce scope of the project
-- limit to planes connected to the flights sample   
DROP TABLE IF EXISTS flights2.planes;
CREATE TABLE flights2.planes
SELECT DISTINCT planes.*
    FROM flights.planes planes
    INNER JOIN flights2.flights flights
		ON flights.tailnum = planes.tailnum     
        
*/
    
    
    