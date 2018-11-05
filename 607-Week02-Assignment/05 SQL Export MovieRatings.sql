

USE 607_data_acquisition_assignments;

#SHOW VARIABLES LIKE "secure_file_priv";	#shows the folder where files must be uploaded/downloaded under MySQLs new security settings


SELECT 'RaterId', 'RaterName', 'Movie', 'Rating'
UNION        
SELECT * 
	INTO OUTFILE 
    #'C:/Users/cbailey/Desktop/CUNY MSDS/607 Data Aquisition & Management/Week2/MovieRatings2.csv'
    'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data 607/Week2/06 Movie Ratings SQL Output.csv'
		FIELDS TERMINATED BY ',' 
        OPTIONALLY ENCLOSED BY '"'
		ESCAPED BY '\\'
		LINES TERMINATED BY '\n'
	FROM movie_ratings;
    
    
    

/*
	Interesting but NOT useful as a UNION; 
    puts out a single column which is then a different length than the data
    would instead have to be manually inserted into the csv
    
    further explore ways to dynamically pivot 

		SET SESSION group_concat_max_len = 1000000;		#removes default limit of length, not needed for the specific example

		SELECT GROUP_CONCAT(CONCAT("'",COLUMN_NAME,"'") ORDER BY ORDINAL_POSITION) AS Headers
			FROM INFORMATION_SCHEMA.COLUMNS
			WHERE TABLE_SCHEMA = '607_data_acquisition_assignments'
				AND TABLE_NAME = 'movie_ratings'
*/

    
    

    
    
    






