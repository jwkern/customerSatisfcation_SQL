___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
# customerSatisfcation_SQL

___________________________________________________________________________________________________________________________________________________________________
GENERAL DESCRIPTION:
The purpose of this SQL script is to calculate the average customer satisfaction rating of different time periods for a fictious customer database. The script employs unions to combine each cross-sectional database into a master database in order to calculate the total average rating. 
___________________________________________________________________________________________________________________________________________________________________
DATA DESCRIPTION:
In this example, the demographic data being used has been generated from the online source https://generate-random.org/person-identity-generator. 

An example schema of each persons information is given below: 

	gender TEXT,
	title TEXT,
	first_name TEXT,
	last_name TEXT,
	birth_date DATE,
	state TEXT,
	email TEXT,	
	rating INTEGER



___________________________________________________________________________________________________________________________________________________________________
CODE DESCRIPTION:
This SQL code (customerSatisfaction.sql) imports the data for three weeks and calculates the  average rating for each week separately. The script then combines the three datasets into one using unions in order to calculate the overall average for all the time periods. 



___________________________________________________________________________________________________________________________________________________________________
RUNNING THE CODE:
1) Download the data (jan2024_wk01.csv, jan2024_wk02.csv, and jan2024_wk03.csv) as well as the SQL script (customerSatisfaction_JWK.sql)

2) In a terminal, cd into the directory that now contains the data and the script

3) In customerSatisfaction.sql, change the file path on line 64 - 66 from "/home/jwkern/Downloads/" to point to your local directory containing the data files 

4) Run the script by typing the following into the command line:

            mysql --local-infile=1 -u username -p password < customerSatisfaction_JWK.sql

(P.S. don't forget to change the username and password to your mySQL credentials)

4.1) If you wish to save the output in a .txt file, instead run the script as:
      
            mysql --local-infile=1 -u username -p password < customerSatisfaction_JWK.sql > output.txt


___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
