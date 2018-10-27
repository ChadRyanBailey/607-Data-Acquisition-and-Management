-- Load Movie Ratings

USE 607_week8_project3;


DROP TABLE IF EXISTS ds_profiles;


#create and load table airlines
	CREATE TABLE ds_profiles 
    (
		Skill_Type VARCHAR(50) NOT NULL
        ,Skill VARCHAR(100) NOT NULL
        ,Percentage DECIMAL(10,2) NOT NULL
	);
	  
	LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Data 607/Week8_Project3/05_ds_profiles.csv' 
	INTO TABLE ds_profiles 
	FIELDS TERMINATED BY ',' 
	ENCLOSED BY '"'
	LINES TERMINATED BY '\n'
	IGNORE 1 ROWS;
    
    
SELECT * FROM ds_profiles;