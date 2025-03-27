/*syntax for ctreating database, CREATE DATABASE databse_name;*/
/* syntax for crating table, CREATE TABLE table_name;*/
/*DDL*/
CREATE DATABASE airlines;
CREATE DATABASE feb_17;
CREATE DATABASE mar_3;
CREATE TABLE airline_details(id int,airline_name varchar(30),src varchar(20),dest varchar(20), no_of_passangers int, food_avaliable boolean);
USE airlines;
DESC airline_details;

CREATE TABLE passabgers_details(passanger_name varchar(10), age int, seat_number int, destination varchar(20), phone_number bigint, ate_food boolean);
CREATE TABLE airhoster_details(airhoster_name varchar(10), age int, gender varchar(5), rating int, good_service boolean, phone_number bigint);
 
CREATE TABLE hospital_info(hospital_id int, hospital_name varchar(10), hospital_location varchar(15), hospital_type varchar(15),total_beds int,established_year int);
CREATE TABLE country_info(country_id int, country_name varchar(15),country_population int, capital varchar(20), area_sq_km int, currency varchar(30));
CREATE TABLE state_info(id int,state_name varchar(25),state_code varchar(20), population int, area_sq_km int, country_id int);
CREATE TABLE scam_info(id int, scam_type varchar(25), scam_description_text varchar(40), target_population varchar(30), scame_date date, reported_by varchar(30));

INSERT INTO hospital_info(hospital_id,hospital_name, hospital_location,hospital_type,total_beds, established_year)VALUES
(1, 'Manipal','Bengaluru','General', 100, 1999),
(2, 'Camondo','Bengalury','Private', 120, 2000),
(3, 'Nanjappa','Shivamogga','Private', 115, 2001),
(4, 'Sarji','Shivamogga','Public', 110, 2002),
(5, 'HealthWell','BTM','Clinic', 2, 2005),
(6, 'Narayana', 'Bommasandra','Specialized', 130, 2000),
(7, 'Jayadeva','Bannerghatta','Private', 125, 1998),
(8, 'Koshys','Shivajinagar','General', 130, 1997),
(9, 'Cloudnine','Whitefield','Public',140, 2002),
(10, 'Sakra','Bellandur','Private', 135, 2005),
(11, 'Baptist','Hebbal','General', 145, 2006),
(12, 'Fortis','Richmond','Specialized', 150, 2007),
(13, 'Aster','Hebbal', 'Private', 111, 2004),
(14, 'Columbia','Whitefield','Public', 144, 2000),
(15, 'Careclinic','Jayanagar','Clinic',3, 2012);

INSERT INTO country_info(country_id, country_name,country_population, capital, area_sq_km, currency)VALUES
(1,'India',1380004385,'New Delhi',3287263,'INR'),
(2,'US', 331002651,'Washington', 9833517,'USD'),
(3, 'Canada',37742154,'Ottawa',9984670,'CAD'),
(4,'UK',67886011,'London',243610,'GBP'),
(5,'Australia',25499884,'Canberra',7692024,'AUD'),
(6,'Germany',83783942,'Berlin',357022,'EUR'),
(7,'France',67081000,'Paris',551695,'EUR'),
(8,'Japan', 126476461,'Tokyo',377975,'JPY'),
(9,'Brazil',212559417,'Brasília',8515767,'BRL'),
(10,'China',1399385113,'Beijing',9596961,'CNY'),
(11,'Mexico',128933209,'Mexico City',1964375,'MXN'),
(12,'SA',59308690,'Pretoria',1219090,'ZAR'),
(13,'Italy',60245946,'Rome',301340,'EUE'),
(14,'Russia',145934462,'Moscow',17098242,'RUB'),
(15,'SK',51269185,'Seoul',100032,'KRW');

INSERT INTO state_info(id,state_name,state_code, population, area_sq_km, country_id)VALUES
(1,'California', 'CA', 39512223, 423967, 1),
(2, 'Texas', 'TX', 28995881, 695662, 1),
(3, 'Florida', 'FL', 21477737, 170312, 1),
(4, 'New York', 'NY', 19453561, 141297, 1),
(5, 'Illinois', 'IL', 12671821, 149998, 1),
(6, 'Ontario', 'ON', 13448494, 1076395, 2),
(7, 'New South Wales', 'NSW', 8089588, 809444, 4),
(8, 'Bavaria', 'BY', 13076721, 70553, 5),
(9, 'Quebec', 'QC', 8497956, 1542056, 2),
(10, 'Maharashtra', 'MH', 112374333, 307713, 7),
(11, 'Jalisco', 'JA', 7630000, 78369, 9),
(12, 'Beijing', 'BJ', 21542000, 16411, 10),
(13, 'Gauteng', 'GT', 15946873, 1854, 12),
(14, 'Lazio', 'LA', 5958693, 17207, 13),
(15, 'Seoul', 'SEO', 10349394, 605, 15);
CREATE DATABASE scam;

INSERT INTO scam_info (id, scam_type, scam_description_text, target_population, scame_date, reported_by) VALUES
(1, 'Phishing', 'Fraudulent attempt to get info', 'General public', '2024-01-15', 'John Doe'),
(2, 'Ponzi Scheme', 'Investment scam using new funds', 'Investors', '2024-03-02', 'Jane Smith'),
(3, 'Lottery Scam', 'Claim of winning a lottery never entered', 'Elderly individuals', '2023-12-20', 'Alice Green'),
(4, 'Tax Scam', 'Calls from fake tax authorities', 'Taxpayers', '2024-02-10', 'Robert White'),
(5, 'Online Dating Scam', 'Scammers build fake relationships', 'Singles', '2024-02-01', 'Sara Brown'),
(6, 'Fake Charity Scam', 'Fake donation requests for charity', 'Generous individuals', '2024-01-25', 'Mary Johnson'),
(7, 'Job Scam', 'Fake job offers requiring fees/info', 'Job seekers', '2023-11-10', 'James Black'),
(8, 'Tech Support Scam', 'Charges for unnecessary repairs', 'Computer users', '2024-02-28', 'Tom White'),
(9, 'IRS Scam', 'Impersonating IRS agents for payment', 'Tax filers', '2024-03-05', 'David Lee'),
(10, 'Investment Scam', 'Fake or high-risk investment schemes', 'Investors', '2024-03-12', 'Nina Taylor'),
(11, 'Real Estate Scam', 'Fraudulent real estate or rental deals', 'Home buyers/renters', '2024-01-14', 'Jake Moore'),
(12, 'Credit Card Fraud', 'Fraudulent credit card transactions', 'Credit card holders', '2024-02-20', 'Emily Clark'),
(13, 'Rental Scam', 'Fake rental properties to steal deposits', 'Renters', '2024-01-30', 'Tom Jackson'),
(14, 'Lottery Scam', 'Scam claiming a fake lottery win', 'General public', '2023-12-10', 'Jessica Allen'),
(15, 'Online Auction Scam', 'Fraudulent auction for fake items', 'Online shoppers', '2023-11-15', 'Ethan Lewis');

SELECT * FROM hospital_info;
SELECT * FROM hospital_info WHERE hospital_location = 'Bengaluru';
SELECT * FROM hospital_info where hospital_name = 'Manipal' AND hospital_location = 'Bengaluru';
SELECT * FROM hospital_info WHERE hospital_type = 'Private' OR established_year = 2002 OR hospital_name = 'Manipal';
SELECT hospital_name = 'Nanjappa' from hospital_info;
SELECT * FROM hospital_info WHERE hospital_location = 'Bengaluru' OR hospital_location = 'Shivamogga';
SELECT * FROM hospital_info WHERE hospital_location = 'Bengaluru' AND hospital_name = 'Sarji' OR hospital_location = 'Shivamogga'; 

UPDATE hospital_info set hospital_location = 'Bengaluru' where hospital_id = 2;
SELECT * FROM hospital_info where hospital_id between 3 and 7;
SELECT * FROM hospital_info where hospital_id not between 4 and 7;
UPDATE hospital_info set total_beds = 150 where hospital_type = 'Private' where hospital_id = 9 where hospital_location = 'Hebbal';
SELECT * FROM hospital_info where hospital_id in (2,4,6,8,10,12);
UPDATE hospital_info set total_beds = 150 
where hospital_id in (2,4,6,8,10,12);
UPDATE hospital_info set established_year = 2000
where hospital_id = 15 or hospital_location = 'BTM';
ALTER table hospital_info add column founder varchar(15)
default 'Alice';
ALTER TABLE hospital_info drop column founder;

SELECT * FROM country_info;
UPDATE country_info set country_name = 'INDIA' where country_id = 2;
SELECT * FROM country_info where country_id between 2 and 10;
SELECT * FROM country_info where country_id not between 5 and 10;
UPDATE country_info set country_population = 1111111 where country_id = 5 where country_id = 6;
UPDATE country_info set country_population = 1111111 
where country_id in (2,4,6,8,10,12);
UPDATE country_info set capital = 'Seoul'
where country_id = 15 or currency = 'BRL';
ALTER table country_info add column ocean varchar(15)
default 'Pacific';
ALTER TABLE country_info drop column ocean;

SELECT * FROM scam_info;
UPDATE scam_info set scam_type = 'Phshing' where id = 12;
SELECT * FROM scam_info where id between 3 and 10;
SELECT * FROM scam_info where id not between 5 and 10;
UPDATE scam_info set scame_date = 2023 where id = 3 or where id = 7;
UPDATE scam_info set scam_type = 'Phishing' 
where scam_id in (2,4,6,8,10,12);
UPDATE scam_info set capital = 'Seoul'
where scam_id = 15 or currency = 'BRL';
ALTER table scam_info add column state varchar(15)
default 'Karnataka';
ALTER TABLE scam_info drop column state;

SELECT * FROM hospital_info;
DELETE FROM hospital_info where hospital_id = 3;
DELETE FROM hospital_info where hospital_id = 2 and hospital_location = 'BTM';
DELETE FROM hospital_info set hospital_name = 'Manipal' 
where hospital_id in (1,2,4);

UPDATE * FROM hospital_info set hospital_name = 'Manipal' where hospital_id = 8;
SELECT * from hospital_info where hospital_name like (%L);

CREATE TABLE cricket_info(cricket_id int, team_name varchar(20), captain_name varchar(20), match_location varchar(20), match_date date, matches_played int, runs_scored int, wickets_taken int, batting_avg float, player_nme varchar(20));
INSERT INTO cricket_info values 
(1, 'India', 'Rohit Sharma', 'Mumbai', '2024-03-10', 250, 11000, 8, 50.2, 'Virat Kohli'),
(2, 'Australia', 'Pat Cummins', 'Sydney', '2024-03-15', 230, 10500, 2, 55.4, 'Steve Smith'),
(3, 'England', 'Ben Stokes', 'London', '2024-03-20', 240, 11050, 12, 54.3, 'Joe Root'),
(4, 'Pakistan', 'Babar Azam', 'Lahore', '2024-03-25', 190, 8600, 1, 52.7, 'Shaheen Afridi'),
(5, 'New Zealand', 'Kane Williamson', 'Wellington', '2024-03-30', 220, 10200, 5, 51.6, 'Trent Boult'),
(6, 'South Africa', 'Temba Bavuma', 'Cape Town', '2024-04-05', 200, 8900, 10, 48.9, 'Kagiso Rabada'),
(7, 'Sri Lanka', 'Dasun Shanaka', 'Colombo', '2024-04-10', 180, 7500, 7, 46.2, 'Wanindu Hasaranga'),
(8, 'West Indies', 'Shai Hope', 'Kingston', '2024-04-15', 160, 7200, 5, 45.8, 'Jason Holder'),
(9, 'Bangladesh', 'Shakib Al Hasan', 'Dhaka', '2024-04-20', 210, 9400, 15, 50.0, 'Tamim Iqbal'),
(10, 'Afghanistan', 'Hashmatullah Shahidi', 'Kabul', '2024-04-25', 140, 6800, 20, 44.7, 'Rashid Khan'),
(11, 'Ireland', 'Andrew Balbirnie', 'Dublin', '2024-05-01', 130, 5700, 8, 43.2, 'Paul Stirling'),
(12, 'Zimbabwe', 'Craig Ervine', 'Harare', '2024-05-06', 120, 5300, 10, 42.5, 'Sikandar Raza'),
(13, 'Netherlands', 'Scott Edwards', 'Amsterdam', '2024-05-11', 100, 4200, 6, 40.8, 'Bas de Leede'),
(14, 'Scotland', 'Richie Berrington', 'Edinburgh', '2024-05-16', 90, 3800, 5, 39.7, 'Mark Watt'),
(15, 'UAE', 'Muhammad Waseem', 'Dubai', '2024-05-21', 80, 3200, 3, 38.5, 'Rohan Mustafa');
SELECT * FROM cricket_info;

CREATE TABLE FootBall_info(FootBall_id int, Team_name varchar(20), Player_No int, captain_name varchar(20), matches_played int, location varchar(20), match_date date, yellow_card int, Red_Card int, Goal_Scored int);
INSERT INTO FootBall_info values
(1, 'Argentina', 10, 'Lionel Messi', 1000, 'Buenos Aires', '2024-03-10', 30, 2, 800),
(2, 'Portugal', 7, 'Cristiano Ronaldo', 1100, 'Lisbon', '2024-03-15', 40, 3, 850),
(3, 'Brazil', 10, 'Neymar Jr', 700, 'Rio de Janeiro', '2024-03-20', 50, 4, 400),
(4, 'France', 7, 'Kylian Mbappe', 500, 'Paris', '2024-03-25', 20, 1, 320),
(5, 'Belgium', 17, 'Kevin De Bruyne', 600, 'Brussels', '2024-03-30', 25, 0, 150),
(6, 'Croatia', 10, 'Luka Modric', 800, 'Zagreb', '2024-04-05', 18, 1, 120),
(7, 'Netherlands', 4, 'Virgil van Dijk', 500, 'Amsterdam', '2024-04-10', 35, 2, 50),
(8, 'Spain', 4, 'Sergio Ramos', 900, 'Madrid', '2024-04-15', 220, 26, 100),
(9, 'Poland', 9, 'Robert Lewandowski', 800, 'Warsaw', '2024-04-20', 10, 0, 650),
(10, 'Egypt', 11, 'Mohamed Salah', 700, 'Cairo', '2024-04-25', 12, 1, 420),
(11, 'France', 9, 'Karim Benzema', 850, 'Lyon', '2024-05-01', 22, 1, 500),
(12, 'England', 9, 'Harry Kane', 600, 'London', '2024-05-06', 15, 0, 400),
(13, 'Portugal', 8, 'Bruno Fernandes', 450, 'Porto', '2024-05-11', 28, 0, 140),
(14, 'Brazil', 1, 'Alisson Becker', 400, 'São Paulo', '2024-05-16', 5, 0, 0),
(15, 'Slovenia', 1, 'Jan Oblak', 500, 'Ljubljana', '2024-05-21', 3, 0, 0);

SELECT * FROM FootBall_info;

UPDATE cricket_info set captain_name = 'Dhoni' where cricket_id = 1;
SELECT * FROM FootBall_info where FootBall_id between 2 and 10;
SELECT * FROM FootBall_info where FootBall_id not between 5 and 10;
UPDATE FootBall_info set Player_No = 20 where FootBall_id = 2 where FootBall_id = 4;
UPDATE FootBall_info set Red_card = 11
where FootBall_id in (2,4,6,8,10,12);
UPDATE FootBall_info set location = 'India'
where FootBall_id = 3 or matches_played = 500;
ALTER table cricket_info add column umpire_name varchar(20)
default 'Nitin Menon';
ALTER TABLE cricket_info drop column umpire_name;

INSTR: INSTRING:

'BANGALORE' 
select instr(string, character);
SELECT INSTR('Bangalore','n');
SELECT INSTR('Bangalore','a');

select team_name,instr(team_name,'k') from cricket_info;

/*substr:
Bangalore */
/* select substr(String, start position, no of characters);*/
select substr('Argentina', 1,5);


SELECT country,SUBSTR(country,2,8) from cricket_info;

Length:


select * from cricket_info;
SELECT team,LENGTH(team) from cricket_info;

LTRIM: LEFT REMOVE
RTRIM: RIGHT REMOVE


SELECT team,LTRIM(team) from cricket_info;

SELECT UPPER(name) from cricket_info;
SELECT lower(name) from cricket_info;

concat:

SELECT CONCAT(name,team,country,matches,runs,wickets) from cricket_info;


/* Aggregate Functions:
Alias: 
1) count: */
select count(*) as no_of_team from cricket_info;
select count(team) from cricket_info;
select * from cricket_info;

/* 2) sum:*/
select sum(catches) as total_catches from cricket_info;

/*3) max:*/

SELECT MAX(highest_score) as high_score from cricket_info;

/*min:*/
SELECT min(runs) as min_runs from cricket_info;

/*avg:*/
SELECT avg(runs) as avg_runs from cricket_info;



SELECT MAX(yellow_card) from FootBall_info
group by yellow_card having(yellow_card) > 20;