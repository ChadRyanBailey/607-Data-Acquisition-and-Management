-- Load Movie Ratings

USE 607_data_acquisition_assignments;


DROP TABLE IF EXISTS movie_ratings;


#create and load table airlines
	CREATE TABLE movie_ratings 
    (
		RaterId INT NOT NULL
        ,RaterName VARCHAR(50) NOT NULL
        ,Movie VARCHAR(100) NOT NULL
        ,Rating INT NOT NULL
	);
	  
	LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data 607/Week2/03 Movie Ratings.csv' 
	INTO TABLE movie_ratings 
	FIELDS TERMINATED BY ',' 
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
    
    
SELECT count(*) FROM movie_Ratings;