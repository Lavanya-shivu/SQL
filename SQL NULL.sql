CREATE TABLE pkl_info(id int not null, name varchar(20) unique, email varchar(20) not null, phone_number int unique, address varchar(20) not null, dod DATE, gender varchar(10), occupation varchar(20), salary varchar(20), company_name varchar(20));
SELECT * FROM pkl_info;
INSERT INTO pkl_info (id,name, email, phone_number, address, dod, gender, occupation, salary, company_name)
VALUES
(1,'Alice', 'alice@pkl.com', '1111111111', 'BTM', '1990-01-01', 'F', 'Engineer', 65000, 'TCS'),
(2,'Bob', 'bob@pkl.com', '1111111112', 'Jayanagara', '1991-02-02', 'M', 'Doctor', 72000,'Wipro'),
(3,'Charlie', 'charlie@pkl.com', '1111111113', 'Rajajinagar', '1992-03-03', 'M', 'Teacher', 53000,'Infosys'),
(4,'David', 'david@pkl.com', '1111111114', 'Majestic', '1993-04-04', 'M', 'Scientist', 85000,'Capgemini'),
(5,'Eve', 'eve@pkl.com', '1111111115', 'Yashwanthpur', '1994-05-05', 'F', 'Artist', 48000,'Omega'),
(6,'Frank', 'frank@pkl.com', '1111111116', 'Marathalli', '1995-06-06', 'M', 'Musician', 57000, 'Accenture'),
(7,'Grace', 'grace@pkl.com', '1111111117', 'Whitfield', '1996-07-07', 'F', 'Writer', 63000,'HCL'),
(8,'Hank', 'hank@pkl.com', '1111111118', 'Electronic city', '1997-08-08', 'M', 'Chef', 50000,'TCS'),
(9,'Ivy', 'ivy@pkl.com', '1111111119', 'BTM', '1998-09-09', 'F', 'Dancer', 55000,'Wipro'),
(10,'Jack', 'jack@pkl.com', '1111111120', 'Marathalli', '1999-10-10', 'M', 'Pilot', 95000,'Capgemini'),
(11,'Kate', 'kate@pkl.com', '1111111121', 'Yashwanthpur', '2000-11-11', 'F', 'Nurse', 77000,'Accenture'),
(12,'Leo', 'leo@pkl.com', '1111111122', 'Majestic', '1985-12-12', 'M', 'Engineer', 69000,'HCL'),
(13,'Mona', 'mona@pkl.com', '1111111123', 'Murgeshpaya', '1986-01-13', 'F', 'Doctor', 75000,'Infosys'),
(14,'Nick', 'nick@pkl.com', '1111111124', 'Kormangala', '1987-02-14', 'M', 'Scientist', 88000,'Omega'),
(15,'Olivia', 'olivia@pkl.com', '1111111125', 'BTM', '1988-03-15', 'F', 'Artist', 49000,'xworkz'),
(16,'Paul', 'paul@pkl.com', '1111111126', 'Kormangala', '1989-04-16', 'M', 'Writer', 65000,'xworkz'),
(17,'Quinn', 'quinn@pkl.com', '1111111127', 'Murgeshpaya', '1990-05-17', 'F', 'Chef', 51000,'TCS'),
(18,'Rachel', 'rachel@pkl.com', '1111111128', 'Marathalli', '1991-06-18', 'F', 'Dancer', 56000,'Wipro'),
(19,'Steve', 'steve@pkl.com', '1111111129', 'Yashwanthpur', '1992-07-19', 'M', 'Pilot', 97000,'HCL'),
(20,'Tina', 'tina@pkl.com', '1111111130', 'Kormangala', '1993-08-20', 'F', 'Nurse', 78000,'JPMorgans');

DROP TABLE 

DESC pkl_info;

CREATE TABLE movie_info(id int not null, movie_name varchar(20) unique, hero_name varchar(20) not null, heroin varchar(20) unique, duration int not null, director varchar(20), rating int, comedian varchar(20), released  int, child_artist varchar(20));
INSERT INTO movie_info(id, movie_name, hero_name, heroin, duration, director, rating, comedian, released , child_artist)
VALUES
(1, 'Ulidavaru', 'Rakshit', 'Sheetal', 154, 'Rakshit Shetty', 8, 'Kishore', 2014, 'Ajaneesh Loknath'),
(2, 'Master', 'Vijay', 'Malavika Mohanan', 178, 'Lokesh Kanagaraj', 8, 'Gauri Kishan', 2021, 'Anirudh Ravichander'),
(3, 'Raja The Great', 'Ravi Teja', 'Mehreen Pirzada', 140, 'Anil Ravipudi', 7, 'Rajendra Prasad', 2017, 'Sai Karthik'),
(4, 'Vakeel Saab', 'Pawan Kalyan', 'Ananya Nagalla', 149, 'Venu Sriram', 7, 'Sithara', 2021, 'Thaman'),
(5, 'Kantara', 'Rishab Shetty', 'Sapthami Gowda', 180, 'Ajaneesh Loknath', 8, 'Pramod Shetty', 2024, 'Ajaneesh'),
(6, 'Vikrant Rona', 'Sudeep', 'Jacqueline Fernandez', 210, 'Anup Bhandari', 7, 'Chikkanna', 2022, 'Ajaneesh Loknath'),
(7, 'Baahubali', 'Prabhas', 'Tamannaah Bhatia', 159, 'Rajamouli', 8, 'Sathyaraj', 2015, 'Keeravani'),
(8, 'Maharshi', 'Mahesh Babu', 'Pooja Hegde', 176, 'Vamshi Paidipally', 7, 'Allari Naresh', 2019, 'Devi Sri Prasad'),
(9, 'Charlie', 'Rakshit Shetty', 'Sangeetha Sringeri', 136, 'Kiranraj', 8, 'Danish Sait', 2022, 'Nobin Paul'),
(10, 'Rangitaranga', 'Nirup Bhandari', 'Avantika Shetty', 149, 'Anup Bhandari', 8, 'Arvind Rau', 2015, 'Anup Bhandari'),
(11, 'RRR', 'Jr. NTR', 'Alia Bhatt', 182, 'S. S. Rajamouli', 8, 'Brahmanandam', 2022, 'M. M. Keeravani'),
(12, 'Pushpa: The Rise', 'Allu Arjun', 'Rashmika Mandanna', 179, 'Sukumar', 7, 'Sunil', 2021, 'Devi Sri Prasad'),
(13, 'Baahubali: The Beginning', 'Prabhas', 'Tamannaah Bhatia', 159, 'S. S. Rajamouli', 8, 'Sathyaraj', 2015, 'Keeravani'),
(14, 'Baahubali 2: The Conclusion', 'Prabhas', 'Anushka Shetty', 167, 'S. S. Rajamouli', 8, 'Sathyaraj', 2017, 'Keeravani'),
(15, 'Arjun Reddy', 'Vijay Deverakonda', 'Shalini Pandey', 182, 'Sandeep Reddy Vanga', 8, 'Rahul Ramakrishna', 2017, 'Radhan'),
(16, 'Jersey', 'Nani', 'Shraddha Srinath', 157, 'Gowtam Tinnanuri', 8, 'Satyam Rajesh', 2019, 'Anirudh Ravichander'),
(17, 'Eega', 'Nani', 'Samantha Ruth Prabhu', 145, 'S. S. Rajamouli', 7, 'Tagubothu Ramesh', 2012, 'Keeravani'),
(18, 'Ala Vaikunthapurramuloo', 'Allu Arjun', 'Pooja Hegde', 165, 'Trivikram Srinivas', 7, 'Murali Sharma', 2020, 'Thaman'),
(19, 'Khaidi', 'Karthi', 'No heroine', 145, 'Lokesh Kanagaraj', 8, 'Arjun Das', 2019, 'Sam'),
(20, 'Maharshi', 'Mahesh Babu', 'Pooja Hegde', 176, 'Vamshi Paidipally', 7, 'Allari Naresh', 2019, 'Devi Sri Prasad');
SELECT * FROM movie_info;

CREATE TABLE cosmetic_info(id int not null, brand varchar(20) unique, product varchar(20) not null, price int unique, rating int not null, manufacturing_date DATE,expiry_date DATE, 
color VARCHAR(20), weight DECIMAL(5, 2), ingredients VARCHAR(20));
INSERT INTO cosmetic_info(id, brand, product, price, rating, manufacturing_date, expiry_date, color, weight, ingredients)
VALUES
(1, 'LOreal', 'Shampoo', 500, 4, '2022-05-15', '2024-05-15', 'Black', 250.50, 'Water'),
(2, 'Maybelline', 'Foundation', 750, 5, '2022-01-10', '2024-01-10', 'Beige', 100.00, 'Aqua'),
(3, 'Neutrogena', 'Face Wash', 350, 4, '2021-12-20', '2023-12-20', 'Clear', 150.00, 'Glycerin'),
(4, 'Dove', 'Deodorant', 200, 3, '2021-11-01', '2023-11-01', 'White', 120.00, 'Aluminum Chloride'),
(5, 'Clinique', 'Moisturizer', 120, 5, '2022-06-30', '2024-06-30', 'Creamy', 200.00, 'Glycerin'),
(6, 'Estee Lauder', 'Serum', 2500, 5, '2021-09-05', '2023-09-05', 'Transparent', 30.00, 'Hyaluronic Acid'),
(7, 'Pantene', 'Conditioner', 400, 4, '2022-03-25', '2024-03-25', 'White', 250.00, 'Silicone'),
(8, 'Swiss', 'Lipstick', 320, 4, '2022-07-19', '2024-07-19', 'Red', 5.00, 'Beeswax'),
(9, 'The Body Shop', 'Body Butter', 850, 4, '2021-12-05', '2023-12-05', 'Yellow', 200.00, 'Shea Butter'),
(10, 'Mac', 'Blush', 1200, 4, '2022-02-18', '2024-02-18', 'Pink', 10.00, 'Talcum Powder'),
(11, 'Garnier', 'Serum', 650, 4, '2022-04-15', '2024-04-15', 'Clear', 50.00, 'Vitamin C'),
(12, 'Olay', 'Night Cream', 1500, 5, '2022-08-25', '2024-08-25', 'White', 100.00, 'Retinol'),
(13, 'Nivea', 'Lotion', 450, 4, '2022-01-01', '2024-01-01', 'Blue', 200.00, 'Aloe Vera'),
(14, 'Vaseline', 'Lip Balm', 100, 3, '2021-10-05', '2023-10-05', 'Pink', 20.00, 'Petroleum Jelly'),
(15, 'Bioderma', 'Micellar Water', 950, 5, '2021-07-10', '2023-07-10', 'Clear', 500.00, 'Water'),
(16, 'Revlon', 'Eyeliner', 330, 4, '2022-09-15', '2024-09-15', 'Black', 10.00, 'Carbon Black'),
(17, 'Myglam', 'Nail Polish', 250, 4, '2022-03-30', '2024-03-30', 'Red', 15.00, 'Nitrocellulose'),
(18, 'Burt’s Bees', 'Hand Cream', 800, 5, '2022-01-20', '2024-01-20', 'White', 75.00, 'Beeswax'),
(19, 'Nars', 'Highlighter', 2100, 5, '2022-06-10', '2024-06-10', 'Gold', 30.00, 'Mica'),
(20, 'Sunsilk', 'Hair Conditioner', 550, 4, '2022-11-01', '2024-11-01', 'Purple', 250.00, 'Water'); 

SELECT * FROM cosmetic_info;
ALTER TABLE cosmetic_info ADD COLUMN category VARCHAR(20);

UPDATE cosmetic_info SET category = 'Haircare' WHERE product IN ('Shampoo', 'Conditioner', 'Hair Conditioner');
UPDATE cosmetic_info SET category = 'Makeup' WHERE product IN ('Foundation', 'Lipstick', 'Blush', 'Eyeliner', 'Nail Polish', 'Highlighter');
UPDATE cosmetic_info SET category = 'Skincare' WHERE product IN ('Face Wash', 'Moisturizer', 'Serum', 'Night Cream', 'Lotion', 'Micellar Water', 'Hand Cream');
UPDATE cosmetic_info SET category = 'Bodycare' WHERE product IN ('Deodorant', 'Body Butter', 'Lip Balm');

SELECT COUNT(*) AS total_products FROM cosmetic_info;

SELECT AVG(price) AS avg_price FROM cosmetic_info;
SELECT MAX(price) AS max_price, MIN(price) AS min_price FROM cosmetic_info;
SELECT SUM(price) AS total_price FROM cosmetic_info;

SELECT category, COUNT(*) AS total_products 
FROM cosmetic_info 
GROUP BY category;

SELECT category, AVG(price) AS avg_price
FROM cosmetic_info
GROUP BY category
HAVING AVG(price) > 500;

SELECT COUNT(*) AS duration;
ALTER TABLE movie_info ADD COLUMN language VARCHAR(20);

UPDATE movie_info SET language = 'Kannada' WHERE movie_name IN ('Ulidavaru', 'Charlie', 'Rangitaranga', 'Kantara', 'Vikrant Rona');
UPDATE movie_info SET language = 'Tamil' WHERE movie_name IN ('Master', 'Ala Vaikunthapurramuloo');
UPDATE movie_info SET language = 'Telugu' WHERE movie_name IN ('Raja The Great', 'Vakeel Saab', 'Baahubali', 'Maharshi', 'RRR', 'Pushpa: The Rise', 'Baahubali: The Beginning', 'Baahubali 2: The Conclusion', 'Arjun Reddy', 'Jersey', 'Eega');
UPDATE movie_info SET language = 'Hindi' WHERE movie_name = 'Khaidi';

SELECT director, AVG(rating) AS avg_rating
FROM movie_info
GROUP BY director;

SELECT director, AVG(rating) AS avg_rating
FROM movie_info
GROUP BY director
HAVING AVG(rating) > 7.5;
    
    SELECT COUNT(*) AS total_movies FROM movie_info;
    SELECT AVG(duration) AS avg_duration FROM movie_info;
    SELECT MAX(duration) AS max_duration FROM movie_info;
    SELECT MIN(duration) AS min_duration FROM movie_info;
    SELECT SUM(duration) AS total_duration FROM movie_info;

