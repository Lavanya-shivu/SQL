CREATE TABLE company_info(id int not null unique,
company_name varchar(20) not null unique,
location varchar(20) not null,
rating int not null, CHECK (rating > 6.5));

RENAME company_info to comp_info;

INSERT INTO company_info (id, company_name,location, rating)
VALUES
(1, 'Amazon', 'Bengaluru', 8.2),
(2, 'Jpmorgan', 'Hydrabad', 9.1),
(3, 'Wipro', 'Bengaluru', 7.5);

SELECT * FROM company_info;

CREATE TABLE furniture_info(id int not null, 
furniture_type varchar (20) unique,
 brand varchar(20) not null, 
 shop_name varchar(20) unique, 
 type enum ('worth', 'notworth'), 
 varenty varchar(20) not null,
 color varchar(20) not null,
 stock_quantity int,
 material varchar(20),
 price decimal(10,1));
 
 INSERT INTO furniture_info (id,furniture_type, brand, shop_name, type, varenty, color, stock_quantity, material, price) VALUES
(1,'Dining Table', 'Ikea', 'HomeStyle', 'worth', '5 years', 'Brown', 10, 'Wood', 299.9),
(2,'Office Chair', 'HermanMiller', 'WorkPlace', 'worth', '3 years', 'Black', 15, 'Leather', 199.9),
(3,'Sofa Set', 'Ashley', 'FurniWorld', 'worth', '7 years', 'Gray', 5, 'Fabric', 499.9),
(4,'Coffee Table', 'Wayfair', 'DecoHome', 'notworth', '2 years', 'White', 8, 'Glass', 159.9),
(5,'TV Stand', 'Ikea', 'MediaShop', 'worth', '4 years', 'Black', 12, 'Wood', 199.9),
(6,'Bookshelf', 'Home Depot', 'StorePlus', 'notworth', '3 years', 'Brown', 6, 'Wood', 129.9),
(7,'Recliner Chair', 'La-Z-Boy', 'LuxurySeating', 'worth', '6 years', 'Blue', 4, 'Leather', 399.9),
(8,'Bed Frame', 'Zinus', 'Dreams', 'worth', '10 years', 'White', 7, 'Metal', 249.9),
(9,'Wardrobe', 'Ikea', 'ClosetKing', 'worth', '5 years', 'Gray', 9, 'Wood', 349.9),
(10,'Shoe Rack', 'Amazon', 'FootStyle', 'notworth', '2 years', 'Brown', 20, 'Plastic', 79.9),
(11,'Study Desk', 'Wayfair', 'StudyCorner', 'worth', '5 years', 'Black', 11, 'Wood', 189.9),
(12,'Outdoor Bench', 'PatioLife', 'GardenWorld', 'worth', '3 years', 'Green', 5, 'Metal', 159.9),
(13,'Bar Stool', 'UrbanStyle', 'ModernBar', 'notworth', '2 years', 'Red', 13, 'Metal', 99.9),
(14,'Folding Chair', 'Coleman', 'CampingPlus', 'worth', '1 year', 'Blue', 25, 'Plastic', 49.9),
(15,'Rocking Chair', 'AntiqueHomes', 'VintageVibe', 'worth', '8 years', 'Brown', 3, 'Wood', 299.9);

SELECT * FROM furniture_info;

ALTER TABLE furniture_info
ADD COLUMN discount DECIMAL(5,2),
ADD COLUMN supplier VARCHAR(30);

UPDATE furniture_info SET discount = 10.00, supplier = 'Global Furnish' WHERE furniture_type = 'Dining Table';
UPDATE furniture_info SET discount = 5.00, supplier = 'OfficePro' WHERE furniture_type = 'Office Chair';
UPDATE furniture_info SET discount = 12.50, supplier = 'Luxury Homes' WHERE furniture_type = 'Sofa Set';
UPDATE furniture_info SET discount = 8.00, supplier = 'DecoHouse' WHERE furniture_type = 'Coffee Table';
UPDATE furniture_info SET discount = 7.50, supplier = 'MediaMarket' WHERE furniture_type = 'TV Stand';
UPDATE furniture_info SET discount = 6.00, supplier = 'HomeDepot' WHERE furniture_type = 'Bookshelf';
UPDATE furniture_info SET discount = 15.00, supplier = 'ComfortSeating' WHERE furniture_type = 'Recliner Chair';
UPDATE furniture_info SET discount = 9.00, supplier = 'DreamFurniture' WHERE furniture_type = 'Bed Frame';
UPDATE furniture_info SET discount = 10.00, supplier = 'ClosetExpert' WHERE furniture_type = 'Wardrobe';
UPDATE furniture_info SET discount = 4.50, supplier = 'ShoeStyle' WHERE furniture_type = 'Shoe Rack';
UPDATE furniture_info SET discount = 5.50, supplier = 'OfficeGear' WHERE furniture_type = 'Study Desk';
UPDATE furniture_info SET discount = 7.00, supplier = 'GardenDecor' WHERE furniture_type = 'Outdoor Bench';
UPDATE furniture_info SET discount = 3.00, supplier = 'BarTrendy' WHERE furniture_type = 'Bar Stool';
UPDATE furniture_info SET discount = 2.50, supplier = 'CampWorld' WHERE furniture_type = 'Folding Chair';
UPDATE furniture_info SET discount = 11.00, supplier = 'AntiqueMasters' WHERE furniture_type = 'Rocking Chair';


CREATE TABLE electronic_gadgets(id int not null, 
gadget_type varchar(30) unique, 
price decimal (10,1) not null, 
shop_name varchar(20) unique, 
location varchar(20) not null,
brand VARCHAR(30) NOT NULL,
model VARCHAR(30) UNIQUE,
type enum ('worth','notworth'),
warranty VARCHAR(20) NOT NULL,
color VARCHAR(20));

ALTER TABLE electronic_gadgets
MODIFY COLUMN gadget_type VARCHAR(50) UNIQUE;

INSERT INTO electronic_gadgets (id, gadget_type, price, shop_name, location, brand, model, type, warranty, color) VALUES
(1,'Apple iPhone 15 Pro', 999.9, 'TechStore', 'New York', 'Apple', 'iPhone 15 Pro', 'worth', '2 years', 'Black'),
(2,'Dell XPS 15', 1499.9, 'BestBuy', 'Los Angeles', 'Dell', 'XPS 15', 'worth', '3 years', 'Silver'),
(3,'Samsung Galaxy Watch 6', 399.9, 'GizmoShop', 'Chicago', 'Samsung', 'Galaxy Watch 6', 'worth', '2 years', 'Gold'),
(4,'Apple iPad Pro', 799.9, 'FutureTech', 'Houston', 'Apple', 'iPad Pro', 'worth', '2 years', 'Gray'),
(5,'Sony WH-1000XM5 Headphones', 199.9, 'AudioZone', 'San Francisco', 'Sony', 'WH-1000XM5', 'worth', '1 year', 'Black'),
(6,'Sony PlayStation 5 Console', 499.9, 'GameHub', 'Miami', 'Sony', 'PlayStation 5', 'worth', '3 years', 'White'),
(7,'LG OLED C2 TV', 1199.9, 'VisionWorld', 'Seattle', 'LG', 'OLED C2', 'worth', '5 years', 'Black'),
(8,'Samsung Galaxy S23 Phone', 799.9, 'GadgetMart', 'Denver', 'Samsung', 'Galaxy S23', 'worth', '2 years', 'Green'),
(9,'HP Spectre x360 Laptop', 999.9, 'CompuShop', 'Boston', 'HP', 'Spectre x360', 'worth', '3 years', 'Blue'),
(10,'Garmin Fenix 7 Smartwatch', 299.9, 'TimeTech', 'Dallas', 'Garmin', 'Fenix 7', 'worth', '2 years', 'Red'),
(11,'Microsoft Surface Pro 9 Tablet', 599.9, 'ElectroHub', 'Atlanta', 'Microsoft', 'Surface Pro 9', 'worth', '3 years', 'Silver'),
(12,'Bose QC 45 Headphones', 149.9, 'SoundKing', 'Phoenix', 'Bose', 'QC 45', 'worth', '1 year', 'White'),
(13,'Microsoft Xbox Series X', 399.9, 'GamerZone', 'Las Vegas', 'Microsoft', 'Xbox Series X', 'worth', '3 years', 'Black'),
(14,'Samsung QLED Q80 TV', 999.9, 'BigScreen', 'Orlando', 'Samsung', 'QLED Q80', 'worth', '4 years', 'Gray'),
(15,'Google Pixel 7 Smartphone', 699.9, 'MobileWorld', 'Austin', 'Google', 'Pixel 7', 'worth', '2 years', 'Blue');

ALTER TABLE electronic_gadgets  
ADD CONSTRAINT unique_gadget_type UNIQUE (gadget_type);

SELECT * FROM electronic_gadgets;

ALTER TABLE electronic_gadgets
ADD COLUMN discount DECIMAL(5,2),
ADD COLUMN supplier VARCHAR(30);

UPDATE electronic_gadgets SET discount = 50.00, supplier = 'Apple Inc.' WHERE model = 'iPhone 15 Pro';
UPDATE electronic_gadgets SET discount = 75.00, supplier = 'Dell Technologies' WHERE model = 'XPS 15';
UPDATE electronic_gadgets SET discount = 30.00, supplier = 'Samsung Electronics' WHERE model = 'Galaxy Watch 6';
UPDATE electronic_gadgets SET discount = 60.00, supplier = 'Apple Inc.' WHERE model = 'iPad Pro';
UPDATE electronic_gadgets SET discount = 25.00, supplier = 'Sony Corporation' WHERE model = 'WH-1000XM5';
UPDATE electronic_gadgets SET discount = 40.00, supplier = 'Sony Interactive' WHERE model = 'PlayStation 5';
UPDATE electronic_gadgets SET discount = 80.00, supplier = 'LG Electronics' WHERE model = 'OLED C2';
UPDATE electronic_gadgets SET discount = 45.00, supplier = 'Samsung Electronics' WHERE model = 'Galaxy S23';
UPDATE electronic_gadgets SET discount = 55.00, supplier = 'HP Inc.' WHERE model = 'Spectre x360';
UPDATE electronic_gadgets SET discount = 35.00, supplier = 'Garmin Ltd.' WHERE model = 'Fenix 7';
UPDATE electronic_gadgets SET discount = 50.00, supplier = 'Microsoft' WHERE model = 'Surface Pro 9';
UPDATE electronic_gadgets SET discount = 20.00, supplier = 'Bose Corporation' WHERE model = 'QC 45';
UPDATE electronic_gadgets SET discount = 45.00, supplier = 'Microsoft' WHERE model = 'Xbox Series X';
UPDATE electronic_gadgets SET discount = 70.00, supplier = 'Samsung Electronics' WHERE model = 'QLED Q80';
UPDATE electronic_gadgets SET discount = 40.00, supplier = 'Google LLC' WHERE model = 'Pixel 7';


CREATE TABLE restaurant_info(id int not null, 
restaurant_name varchar(50) unique,
 location varchar(30) not null, 
 price decimal(5,1) unique,
 taste enum('good', 'bad'),
 rating decimal(2,1) not null,
 owner_name varchar(25),
 opening_hours VARCHAR(50),
 cuisine_type VARCHAR(50) NOT NULL,
 contact_number int UNIQUE);
 
 INSERT INTO restaurant_info (id,restaurant_name, location, price, taste, rating, owner_name, opening_hours, cuisine_type, contact_number) 
VALUES
(1,'The Spice Hub', 'New York', 25.5, 'good', 4.5, 'John Doe', '10 AM - 10 PM', 'Indian', '1234567'),
(2,'Ocean Breeze', 'Los Angeles', 30.0, 'good', 4.2, 'Emma Smith', '9 AM - 11 PM', 'Seafood', '9876543'),
(3,'Bella Italia', 'Chicago', 28.0, 'good', 4.7, 'Mario Rossi', '11 AM - 10 PM', 'Italian', '5678901'),
(4,'Burger Town', 'Houston', 15.5, 'good', 4.0, 'Steve Johnson', '10 AM - 12 AM', 'Fast Food', '2345678'),
(5,'Green Delight', 'San Francisco', 20.0, 'good', 4.8, 'Sarah Lee', '8 AM - 9 PM', 'Vegan', '8765432'),
(6,'Tokyo Sushi', 'Seattle', 35.0, 'good', 4.9, 'Ken Tanaka', '12 PM - 11 PM', 'Japanese', '34567890'),
(7,'Taco Fiesta', 'Austin', 18.5, 'good', 4.3, 'Carlos Mendez', '10 AM - 11 PM', 'Mexican', '76543210'),
(8,'Steakhouse 101', 'Dallas', 40.0, 'good', 4.6, 'David Miller', '5 PM - 11 PM', 'Steakhouse', '6543210'),
(9,'Curry Palace', 'Denver', 27.5, 'good', 4.4, 'Amit Patel', '11 AM - 10 PM', 'Indian', '5432109'),
(10,'Sunset Diner', 'Miami', 22.0, 'bad', 3.5, 'Nancy Wilson', '7 AM - 10 PM', 'American', '4321095'),
(11,'Pasta House', 'Boston', 26.0, 'good', 4.1, 'Luigi Romano', '11 AM - 10 PM', 'Italian', '3210987'),
(12,'BBQ Heaven', 'Atlanta', 32.5, 'good', 4.2, 'James Carter', '12 PM - 10 PM', 'BBQ', '2109873'),
(13,'Golden Dragon', 'Las Vegas', 29.0, 'good', 4.7, 'Li Wei', '10 AM - 10 PM', 'Chinese', '1098762'),
(14,'Vegan Vibes', 'San Diego', 21.5, 'good', 4.5, 'Mia Thompson', '9 AM - 9 PM', 'Vegan', '9876511'),
(15,'Fish & Chips Corner', 'Orlando', 19.0, 'bad', 3.8, 'Robert Brown', '10 AM - 9 PM', 'British', '8765408');
 
 SELECT * FROM restaurant_info;
 
 ALTER TABLE restaurant_info 
ADD COLUMN seating_capacity INT CHECK (seating_capacity > 0);

