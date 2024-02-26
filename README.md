___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
# customerSatisfcation_SQL

___________________________________________________________________________________________________________________________________________________________________
GENERAL DESCRIPTION:
The purpose of this SQL script is to calculate the average customer satisfaction rating of different age groups within a fictious customer database.

___________________________________________________________________________________________________________________________________________________________________
DATA DESCRIPTION:
In this example, the demographic data being used has been generated from the online source https://generate-random.org/person-identity-generator. 

An example schema of each persons information is given below: 

	gender TEXT,
	title TEXT,
	first_name TEXT,
	last_name TEXT,
	birth_date DATE,
	social_security_number VARCHAR(11),
	street_address TEXT,
	secondary_address TEXT,	
	post_code TEXT,
	city TEXT,
	state TEXT,
	latitude TEXT,	
	longitude TEXT,	
	phone_number TEXT,	
	email TEXT,	
	credit_card_type TEXT,
	credit_card_number TEXT,
	credit_card_expiration_date TEXT,
	iban TEXT,
	bank_account_number TEXT,
	swift_bic_number TEXT,
	company TEXT,
	job_title TEXT,
	PRIMARY KEY (social_security_number)



___________________________________________________________________________________________________________________________________________________________________
CODE DESCRIPTION:
This SQL code (customerSatisfaction.sql) imports the data (people_data.csv), and . . .



___________________________________________________________________________________________________________________________________________________________________
RUNNING THE CODE:
1) Download the data (people_data.csv) and the SQL script (customerSatisfaction_JWK.sql)

2) In a terminal, cd into the directory that now contains the data and the script

3) In customerSatisfaction.sql, change the file path on line _______ from "/home/jwkern/Downloads/Misc" to point to your local directory containing people_data.csv 

4) Run the script by typing the following into the command line:

            mysql --local-infile=1 -u username -p password < customerSatisfaction_JWK.sql

(P.S. don't forget to change the username and password to your mySQL credentials)

4.1) If you wish to save the output in a .txt file, instead run the script as:
      
            mysql --local-infile=1 -u username -p password < customerSatisfaction_JWK.sql > output.txt


___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
___________________________________________________________________________________________________________________________________________________________________
