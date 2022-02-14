insert into passenger (Passenger_name,  Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values ('Sejal' 'AC' 'F' 'Bengaluru' 'Chennai' '350' 'Sleeper');
insert into passenger (Passenger_name, Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values  (' Anmol ', ' Non-AC ', 'M', ' Mumbai ', ' Hyderabad ', '700', ' Sitting ');
insert into passenger (Passenger_name, Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values  (' Pallavi l ', ' AC ', 'F', ' Panaji ', ' Bengaluru ', 600, ' Sleeper ');
insert into passenger (Passenger_name, Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values  (' Khusboo ', ' AC ', 'F', ' Chennai ', ' Mumbai ', 1500, ' Sleeper ');
insert into passenger (Passenger_name, Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values  (' Udit l ', ' Non-AC ', 'M', ' Trivandrum ', ' panaji ', '1000', ' Sleeper ');
insert into passenger (Passenger_name, Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values  (' Ankur ', ' AC ', 'M', ' Nagpur ', ' Hyderabad ', '500', ' Sitting ');
insert into passenger (Passenger_name, Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values  (' Hemant ', ' Non-AC ', 'M', ' panaji ', ' Mumbai ', '700', ' Sleeper ');
insert into passenger (Passenger_name, Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values  (' Manish ', ' Non-AC ', 'M', ' Hyderabad ', ' Bengaluru ', '500', ' Sitting ');
insert into passenger (Passenger_name, Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values  (' Piyush ', ' AC ', 'M', ' Pune ', ' Nagpur ', '700', ' Sitting ');
insert into price (Bus_Type, Distance  , Price) values  (' Sleeper ', ' 350 ', '770');
insert into price (Bus_Type, Distance  , Price) values  (' Sleeper ', ' 500 ', '1100');
insert into price (Bus_Type, Distance  , Price) values  (' Sleeper ', ' 600 ', '1320');
insert into price (Bus_Type, Distance  , Price) values  (' Sleeper ', ' 700 ', '1540');
insert into price (Bus_Type, Distance  , Price) values  (' Sleeper ', ' 1000 ','2200');
insert into price (Bus_Type, Distance  , Price) values  (' Sleeper ', ' 1200 ', '2640');
insert into price (Bus_Type, Distance  , Price) values  (' Sleeper ', ' 1500 ', '2700');
insert into price (Bus_Type, Distance  , Price) values  (' Sitting ', ' 500 ', '620');
insert into price (Bus_Type, Distance  , Price) values  (' Sitting ', ' 600 ', '744');
insert into price (Bus_Type, Distance  , Price) values  (' Sitting ', ' 700 ', '868');
insert into price (Bus_Type, Distance  , Price) values  (' Sitting ', ' 1000 ', '1240');
insert into price (Bus_Type, Distance  , Price) values  (' Sitting ', ' 1200 ', '1488');
insert into price (Bus_Type, Distance  , Price) values  (' Sitting ', ' 1500 ', '1860');
SELECT Gender, COUNT(*) FROM passenger WHERE Distance = 600 GROUP BY Gender ;
select MIN(Price) from price Group by Bus_Type='Sleeper';
SELECT Passenger_name FROM passenger WHERE Passenger_name LIKE 'S%';
SELECT * FROM passenger;
insert into passenger (Passenger_name,  Category , Gender, Boarding_City, Destination_City, Distance, Bus_Type) values ('Sejal', 'AC', 'F', 'Bengaluru', 'Chennai', '350', 'Sleeper');
SELECT passenger.Passenger_name, passenger.Boarding_City, passenger.Destination_City, passenger.Bus_Type, price.Price FROM passenger,price WHERE passenger.Bus_Type = price. Bus_Type ;
SELECT passenger.Passenger_name,price.Price FROM passenger,price WHERE passenger.Bus_Type = 'sitting' AND passenger.Distance=1000 ;
SELECT price.Price,price.Bus_Type FROM price,passenger WHERE passenger.Bus_Type = 'sitting' AND passenger.Bus_Type = 'Sleeper' AND passenger.Boarding_City = 'Bangalore' AND passenger.Destination_City= 'Panaji';
SELECT DISTINCT Distance FROM passenger ORDER BY Distance desc; 
SELECT Passenger_name, Distance, ROUND( Distance/sum(Distance) * 100.0, 1) AS Percent FROM passenger;
SELECT Distance , Price,
CASE
    WHEN Price > 1000 THEN "Expensive!"
    WHEN Price > 500 AND Price<1000 THEN "Average Cost"
    ELSE "Cheap"
END AS Category
FROM price ;
