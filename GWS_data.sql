INSERT INTO Region (region_name)
VALUES
    ('Region 1'),
    ('Region 2'),
    ('Region 3'),
    ('Region 4'),
    ('Region 5');


INSERT INTO Location (continent, country, region_id, address)
VALUES
    ('Continent 1', 'Country 1', 1, 'Address 1'),
    ('Continent 2', 'Country 2', 2, 'Address 2'),
    ('Continent 3', 'Country 3', 3, 'Address 3'),
    ('Continent 4', 'Country 4', 4, 'Address 4'),
    ('Continent 5', 'Country 5', 5, 'Address 5');

INSERT INTO Wine (wine_name, wine_type, vintage, region_id, fixed_acidity, volatile_acidity, citric_acid, residual_sugar, chlorides, free_sulfur_dioxide, total_sulfur_dioxide, density, pH, sulphates, alcohol, quality, price)
VALUES
    ('Wine 1', 'Red', '2020-01-01', 1, 7.5, 0.6, 0.1, 2.5, 0.08, 10, 40, 0.995, 3.2, 0.6, 12.5, 8, 25.99),
    ('Wine 2', 'White', '2019-06-15', 2, 6.8, 0.4, 0.2, 1.8, 0.07, 15, 35, 0.992, 3.1, 0.5, 11.8, 7, 19.99),
    ('Wine 3', 'Rosé', '2021-03-10', 3, 7.2, 0.5, 0.15, 3.0, 0.06, 12, 38, 0.993, 3.3, 0.7, 13.2, 6, 22.99),
    ('Wine 4', 'Red', '2018-09-20', 4, 7.9, 0.7, 0.12, 2.0, 0.09, 11, 45, 0.996, 3.4, 0.8, 13.5, 9, 29.99),
    ('Wine 5', 'White', '2022-04-05', 5, 6.5, 0.3, 0.25, 1.5, 0.05, 20, 30, 0.990, 3.0, 0.4, 12.0, 8, 24.99);
    
INSERT INTO Wine_Varietals (varietal_name, region_id, description, flavors, characteristics, food_pairings)
VALUES
    ('Varietal 1', 1, 'Description 1', 'Flavors 1', 'Characteristics 1', 'Food Pairings 1'),
    ('Varietal 2', 2, 'Description 2', 'Flavors 2', 'Characteristics 2', 'Food Pairings 2'),
    ('Varietal 3', 3, 'Description 3', 'Flavors 3', 'Characteristics 3', 'Food Pairings 3'),
    ('Varietal 4', 4, 'Description 4', 'Flavors 4', 'Characteristics 4', 'Food Pairings 4'),
    ('Varietal 5', 5, 'Description 5', 'Flavors 5', 'Characteristics 5', 'Food Pairings 5');
    
INSERT INTO Winery (winery_name, location_id, rating_id, verified)
VALUES
    ('Winery 1', 1, 1, FALSE),
    ('Winery 2', 2, 2, TRUE),
    ('Winery 3', 3, 3, TRUE),
    ('Winery 4', 4, 4, FALSE),
    ('Winery 5', 5, 5, TRUE);

INSERT INTO Winery_Varietals (winery_id, varietal_id)
VALUES
    (1, 1),
    (1, 2),
    (2, 3),
    (2, 4),
    (3, 5);
