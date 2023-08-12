create database cars;

\connect cars


CREATE TABLE Cars (
    id SERIAL PRIMARY KEY,
    year INT,
    make VARCHAR(150),
    model VARCHAR(150)
);


insert into cars (id, year, make, model) values (1, 2002, 'Mercedes-Benz', 'G-Class');
insert into cars (id, year, make, model) values (2, 1992, 'Ford', 'Festiva');
insert into cars (id, year, make, model) values (3, 2001, 'Lamborghini', 'Diablo');
insert into cars (id, year, make, model) values (4, 2009, 'GMC', 'Sierra 3500');
insert into cars (id, year, make, model) values (5, 2000, 'Toyota', 'Tacoma');
insert into cars (id, year, make, model) values (6, 2012, 'Dodge', 'Durango');
insert into cars (id, year, make, model) values (7, 1987, 'Volkswagen', 'Jetta');
insert into cars (id, year, make, model) values (8, 1993, 'Ford', 'Bronco');
insert into cars (id, year, make, model) values (9, 1998, 'Oldsmobile', 'Regency');
insert into cars (id, year, make, model) values (10, 2009, 'Dodge', 'Dakota');
insert into cars (id, year, make, model) values (11, 2004, 'Subaru', 'Legacy');
insert into cars (id, year, make, model) values (12, 2004, 'Cadillac', 'XLR');
insert into cars (id, year, make, model) values (13, 2012, 'MINI', 'Cooper');
insert into cars (id, year, make, model) values (14, 1994, 'Lexus', 'SC');
insert into cars (id, year, make, model) values (15, 2012, 'Lotus', 'Exige');
insert into cars (id, year, make, model) values (16, 1997, 'GMC', 'Safari');
insert into cars (id, year, make, model) values (17, 1989, 'Ford', 'LTD Crown Victoria');
insert into cars (id, year, make, model) values (18, 1992, 'Chevrolet', 'Corvette');
insert into cars (id, year, make, model) values (19, 2008, 'Suzuki', 'XL7');
insert into cars (id, year, make, model) values (20, 1969, 'Pontiac', 'Firebird');
insert into cars (id, year, make, model) values (21, 2009, 'Acura', 'MDX');
insert into cars (id, year, make, model) values (22, 1999, 'Chevrolet', 'Metro');
insert into cars (id, year, make, model) values (23, 2011, 'Cadillac', 'STS');
insert into cars (id, year, make, model) values (24, 1993, 'BMW', 'M5');
insert into cars (id, year, make, model) values (25, 2002, 'Toyota', 'Echo');
insert into cars (id, year, make, model) values (26, 1995, 'Ford', 'Taurus');
insert into cars (id, year, make, model) values (27, 1997, 'Toyota', 'T100');
insert into cars (id, year, make, model) values (28, 2001, 'Infiniti', 'Q');
insert into cars (id, year, make, model) values (29, 2008, 'Lamborghini', 'Reventón');
insert into cars (id, year, make, model) values (30, 2000, 'Hummer', 'H1');
insert into cars (id, year, make, model) values (31, 1991, 'Subaru', 'Justy');
insert into cars (id, year, make, model) values (32, 1989, 'Land Rover', 'Range Rover');
insert into cars (id, year, make, model) values (33, 2002, 'Ford', 'E-Series');
insert into cars (id, year, make, model) values (34, 1993, 'Audi', '90');
insert into cars (id, year, make, model) values (35, 2002, 'Lincoln', 'Blackwood');
insert into cars (id, year, make, model) values (36, 2007, 'Mazda', 'RX-8');
insert into cars (id, year, make, model) values (37, 1999, 'GMC', 'Sierra 1500');
insert into cars (id, year, make, model) values (38, 1989, 'Buick', 'Estate');
insert into cars (id, year, make, model) values (39, 2009, 'Audi', 'A4');
insert into cars (id, year, make, model) values (40, 2007, 'Audi', 'A8');
insert into cars (id, year, make, model) values (41, 1992, 'Ford', 'Club Wagon');
insert into cars (id, year, make, model) values (42, 1996, 'Lexus', 'ES');
insert into cars (id, year, make, model) values (43, 2008, 'Cadillac', 'STS');
insert into cars (id, year, make, model) values (44, 1967, 'Jensen', 'Interceptor');
insert into cars (id, year, make, model) values (45, 2000, 'Volkswagen', 'Eurovan');
insert into cars (id, year, make, model) values (46, 1996, 'Chevrolet', 'Lumina');
insert into cars (id, year, make, model) values (47, 1966, 'Pontiac', 'GTO');
insert into cars (id, year, make, model) values (48, 2000, 'Audi', 'A4');
insert into cars (id, year, make, model) values (49, 1972, 'Pontiac', 'Grand Prix');
insert into cars (id, year, make, model) values (50, 1993, 'Buick', 'Park Avenue');
insert into cars (id, year, make, model) values (51, 1997, 'Oldsmobile', 'Silhouette');
insert into cars (id, year, make, model) values (52, 2013, 'Ford', 'C-MAX Hybrid');
insert into cars (id, year, make, model) values (53, 2004, 'Mercury', 'Marauder');
insert into cars (id, year, make, model) values (54, 2004, 'Toyota', 'Land Cruiser');
insert into cars (id, year, make, model) values (55, 1986, 'Porsche', '944');
insert into cars (id, year, make, model) values (56, 2011, 'Land Rover', 'LR2');
insert into cars (id, year, make, model) values (57, 2005, 'Pontiac', 'G6');
insert into cars (id, year, make, model) values (58, 1995, 'Buick', 'Riviera');
insert into cars (id, year, make, model) values (59, 2000, 'Cadillac', 'Catera');
insert into cars (id, year, make, model) values (60, 2004, 'Honda', 'Civic');
insert into cars (id, year, make, model) values (61, 1997, 'Ford', 'Aerostar');
insert into cars (id, year, make, model) values (62, 1996, 'Cadillac', 'DeVille');
insert into cars (id, year, make, model) values (63, 2002, 'Toyota', 'Avalon');
insert into cars (id, year, make, model) values (64, 2003, 'Chrysler', 'Concorde');
insert into cars (id, year, make, model) values (65, 2006, 'Chevrolet', 'Uplander');
insert into cars (id, year, make, model) values (66, 1990, 'Mazda', 'MX-6');
insert into cars (id, year, make, model) values (67, 2007, 'Pontiac', 'G5');
insert into cars (id, year, make, model) values (68, 1970, 'Ford', 'Torino');
insert into cars (id, year, make, model) values (69, 2006, 'Toyota', '4Runner');
insert into cars (id, year, make, model) values (70, 2007, 'Ferrari', 'F430');
insert into cars (id, year, make, model) values (71, 2000, 'Nissan', 'Altima');
insert into cars (id, year, make, model) values (72, 1992, 'Hyundai', 'Elantra');
insert into cars (id, year, make, model) values (73, 1997, 'Kia', 'Sportage');
insert into cars (id, year, make, model) values (74, 1993, 'Eagle', 'Vision');
insert into cars (id, year, make, model) values (75, 2011, 'Dodge', 'Dakota');
insert into cars (id, year, make, model) values (76, 1987, 'Maserati', 'Biturbo');
insert into cars (id, year, make, model) values (77, 2005, 'Pontiac', 'Montana SV6');
insert into cars (id, year, make, model) values (78, 2003, 'Maybach', '62');
insert into cars (id, year, make, model) values (79, 2011, 'BMW', '1 Series');
insert into cars (id, year, make, model) values (80, 1985, 'Lamborghini', 'Countach');
insert into cars (id, year, make, model) values (81, 2004, 'Nissan', 'Titan');
insert into cars (id, year, make, model) values (82, 1994, 'Eagle', 'Vision');
insert into cars (id, year, make, model) values (83, 2010, 'Bentley', 'Azure');
insert into cars (id, year, make, model) values (84, 1962, 'Studebaker', 'Avanti');
insert into cars (id, year, make, model) values (85, 1996, 'BMW', 'M3');
insert into cars (id, year, make, model) values (86, 2011, 'Toyota', 'Venza');
insert into cars (id, year, make, model) values (87, 1986, 'Buick', 'Riviera');
insert into cars (id, year, make, model) values (88, 1991, 'Ford', 'Tempo');
insert into cars (id, year, make, model) values (89, 1984, 'Volkswagen', 'Vanagon');
insert into cars (id, year, make, model) values (90, 1987, 'Ford', 'Escort');
insert into cars (id, year, make, model) values (91, 2010, 'Nissan', 'Versa');
insert into cars (id, year, make, model) values (92, 2006, 'GMC', 'Envoy XL');
insert into cars (id, year, make, model) values (93, 1998, 'BMW', 'M3');
insert into cars (id, year, make, model) values (94, 1987, 'Buick', 'Skyhawk');
insert into cars (id, year, make, model) values (95, 1993, 'Chevrolet', 'Blazer');
insert into cars (id, year, make, model) values (96, 2003, 'Chevrolet', 'SSR');
insert into cars (id, year, make, model) values (97, 1990, 'Porsche', '944');
insert into cars (id, year, make, model) values (98, 1997, 'Pontiac', 'Sunfire');
insert into cars (id, year, make, model) values (99, 1998, 'Mercury', 'Mountaineer');
insert into cars (id, year, make, model) values (100, 2001, 'Honda', 'CR-V');
