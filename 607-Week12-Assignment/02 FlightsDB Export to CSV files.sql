

USE flights2;


-- get the folder where files must be uploaded/downloaded under MySQLs new security settings
	-- SHOW VARIABLES LIKE "secure_file_priv";	

-- export tables
	
    -- flights.airlines    
		SELECT 'Carrier', 'Name'
		UNION SELECT * 
			INTO OUTFILE 
			'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data_607/flights_export/airlines.csv'
				FIELDS TERMINATED BY ',' 
				OPTIONALLY ENCLOSED BY '"'
				ESCAPED BY '\\'
				LINES TERMINATED BY '\n'
			FROM airlines;
            
	-- flights.airports
		SELECT 'FAA', 'Name', 'Lat', 'Lon', 'Alt', 'TZ', 'Dst'
		UNION SELECT * 
			INTO OUTFILE 
			'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data_607/flights_export/airports.csv'
				FIELDS TERMINATED BY ',' 
				OPTIONALLY ENCLOSED BY '"'
				ESCAPED BY '\\'
				LINES TERMINATED BY '\n'
			FROM airports;
            
	-- flights.flights
		SELECT 'Year', 'Month', 'Day', 'Dep_Time', 'Dep_Delay', 'arr_Time', 'arr_Delay', 'Carrier', 
				'TailNum', 'Flight', 'Origin', 'Dest', 'Air_Time', 'Distance', 'Hour', 'Minute'
		UNION SELECT * 
			INTO OUTFILE 
			'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data_607/flights_export/flights.csv'
				FIELDS TERMINATED BY ',' 
				OPTIONALLY ENCLOSED BY '"'
				ESCAPED BY '\\'
				LINES TERMINATED BY '\n'
			FROM flights;
            
	-- flights.planes
		SELECT 'TailNum', 'Year', 'Type', 'Manufacturer', 'Model', 'Engine', 'Seats', 'Speed', 'Engine'
		UNION SELECT * 
			INTO OUTFILE 
			'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data_607/flights_export/planes.csv'
				FIELDS TERMINATED BY ',' 
				OPTIONALLY ENCLOSED BY '"'
				ESCAPED BY '\\'
				LINES TERMINATED BY '\n'
			FROM planes;
    /*        
	-- flights.weather
		SELECT 'Origin', 'Year', 'Month', 'Day', 'Hour', 'Temp', 'DewP', 'Humid', 
				'Wind_Dir', 'Wind_Speed', 'Wind_Gust', 'Precip', 'Pressure', 'Visib'
		UNION SELECT * 
			INTO OUTFILE 
			'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data 607/Flights Export/weather.csv'
				FIELDS TERMINATED BY ',' 
				OPTIONALLY ENCLOSED BY '"'
				ESCAPED BY '\\'
				LINES TERMINATED BY '\n'
			FROM weather;
		*/	


    
    

    
    
    






