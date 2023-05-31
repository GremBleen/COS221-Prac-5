DROP DATABASE IF EXISTS GWS;
CREATE DATABASE GWS;

USE GWS;

-- Region Table
CREATE TABLE Region (
    region_id INT PRIMARY KEY,
    region_name VARCHAR(255) NOT NULL
);

-- Location Table
CREATE TABLE Location (
    location_id INT PRIMARY KEY,
    continent VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    region_id INT NOT NULL,
    address VARCHAR(255) NOT NULL,
    FOREIGN KEY (region_id)
        REFERENCES Region (region_id)
);

-- Ratings Table
CREATE TABLE Ratings (
    rating_id INT PRIMARY KEY,
    rating_title VARCHAR(255) NOT NULL,
    rating DECIMAL(2 , 1 ) NOT NULL,
    comment VARCHAR(255)
);

-- Winery Table
CREATE TABLE Winery (
    winery_id INT PRIMARY KEY,
    winery_name VARCHAR(255) NOT NULL,
    location_id INT NOT NULL,
    rating_id INT,
    verified BOOLEAN DEFAULT FALSE,
    FOREIGN KEY (rating_id)
        REFERENCES Ratings (rating_id),
    FOREIGN KEY (location_id)
        REFERENCES Location (location_id)
);

-- Users Table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL
);

-- Wines Table
CREATE TABLE Wine (
    wine_id INT PRIMARY KEY NOT NULL,
    winery_id INT NOT NULL,
    wine_name VARCHAR(255) NOT NULL,
    wine_type VARCHAR(255) NOT NULL,
    vintage DATE,
    region_id INT NOT NULL,
    fixed_acidity DECIMAL(5 , 2 ),
    volatile_acidity DECIMAL(5 , 2 ),
    citric_acid DECIMAL(5 , 2 ),
    residual_sugar DECIMAL(5 , 2 ),
    chlorides DECIMAL(5 , 2 ),
    free_sulfur_dioxide DECIMAL(5 , 2 ),
    total_sulfur_dioxide DECIMAL(5 , 2 ),
    density DECIMAL(6 , 4 ),
    pH DECIMAL(4 , 2 ),
    sulphates DECIMAL(5 , 2 ),
    alcohol DECIMAL(4 , 2 ),
    quality INT,
    price DECIMAL(8 , 2 ),
    FOREIGN KEY (region_id)
        REFERENCES Region (region_id),
	 FOREIGN KEY (winery_id)
        REFERENCES Winery (winery_id)
);

-- Review Table
CREATE TABLE Review (
    review_id INT PRIMARY KEY,
    wine_id INT NOT NULL,
    rating INT,
    country VARCHAR(255),
    designation VARCHAR(255),
    province VARCHAR(255),
    regions VARCHAR(255),
    user_id INT NOT NULL,
    FOREIGN KEY (wine_id)
        REFERENCES Wine (wine_id),
    FOREIGN KEY (user_id)
        REFERENCES users (user_id),
    CHECK (rating >= 1 AND rating <= 100)
);

-- Wine Tasting Information
CREATE TABLE Wine_Tasting_Information (
    tasting_id INT PRIMARY KEY,
    winery_id INT NOT NULL,
    tasting_fees DECIMAL(8 , 2 ),
    available_varietals VARCHAR(255),
    guided_tours BOOLEAN,
    reservation_requirements VARCHAR(255),
    FOREIGN KEY (winery_id)
        REFERENCES Winery (winery_id)
);

-- EventsAndFestivals Table
CREATE TABLE Events_And_Festivals (
    event_id INT PRIMARY KEY,
    event_name VARCHAR(255) NOT NULL,
    event_date DATE,
    location_id INT NOT NULL,
    ticket_price DECIMAL(8 , 2 ),
    description TEXT,
    rating_id INT,
    FOREIGN KEY (rating_id)
        REFERENCES Ratings (rating_id),
    FOREIGN KEY (location_id)
        REFERENCES Location (location_id)
);

-- Education Opportunities
CREATE TABLE Wine_Education (
    education_id INT PRIMARY KEY,
    education_provider VARCHAR(255) NOT NULL,
    education_title VARCHAR(255) NOT NULL,
    education_type VARCHAR(255) NOT NULL,
    description TEXT,
    location_id INT NOT NULL,
    start_date DATE,
    end_date DATE,
    rating_id INT,
    FOREIGN KEY (rating_id)
        REFERENCES Ratings (rating_id),
    FOREIGN KEY (location_id)
        REFERENCES Location (location_id)
);

-- WineTrailsAndRoutes Table
CREATE TABLE Wine_Trails_And_Routes (
    trail_id INT PRIMARY KEY,
    trail_name VARCHAR(255) NOT NULL,
    location_id INT NOT NULL,
    itinerary TEXT,
    landmarks TEXT,
    rating_id INT,
    FOREIGN KEY (rating_id)
        REFERENCES Ratings (rating_id),
    FOREIGN KEY (location_id)
        REFERENCES Location (location_id)
);

-- WineVarietals Table
CREATE TABLE Wine_Varietals (
    varietal_id INT PRIMARY KEY,
    winery_id INT NOT NULL, 
    varietal_name VARCHAR(255) NOT NULL,
    region_id INT NOT NULL,
    description TEXT,
    flavors TEXT,
    characteristics TEXT,
    food_pairings TEXT,
    FOREIGN KEY (winery_id)
        REFERENCES Winery (winery_id)
);

-- WineClubsMemberships Table
CREATE TABLE Wine_Clubs_Memberships (
    club_id INT PRIMARY KEY,
    winery_id INT NOT NULL,
    club_name VARCHAR(255) NOT NULL,
    benefits TEXT,
    discounts TEXT,
    exclusive_events TEXT,
    wine_shipment_options TEXT,
    rating_id INT,
    FOREIGN KEY (rating_id)
        REFERENCES Ratings (rating_id),
    FOREIGN KEY (winery_id)
        REFERENCES Winery (winery_id)
);

-- AccommodationOptions Table
CREATE TABLE Accommodation_Options (
    accommodation_id INT PRIMARY KEY,
    accommodation_name VARCHAR(255) NOT NULL,
    location_id INT NOT NULL,
    description TEXT,
    rating_id INT,
    FOREIGN KEY (rating_id)
        REFERENCES Ratings (rating_id),
    FOREIGN KEY (location_id)
        REFERENCES Location (location_id)
);

-- RestaurantsDining Table
CREATE TABLE Restaurants_Dining (
    restaurant_id INT PRIMARY KEY,
    restaurant_name VARCHAR(255) NOT NULL,
    location_id INT NOT NULL,
    cuisine_type VARCHAR(255),
    description TEXT,
    reservation_options TEXT,
    rating_id INT,
    FOREIGN KEY (rating_id)
        REFERENCES Ratings (rating_id),
    FOREIGN KEY (location_id)
        REFERENCES Location (location_id)
);

-- LocalAttractions Table
CREATE TABLE Local_Attractions (
    attraction_id INT PRIMARY KEY,
    attraction_name VARCHAR(255) NOT NULL,
    region_id INT NOT NULL,
    description TEXT,
    FOREIGN KEY (region_id)
        REFERENCES Region (region_id)
);

-- WineTipsGuides Table
CREATE TABLE Wine_Tips_Guides (
    tip_id INT PRIMARY KEY,
    tip_title VARCHAR(255) NOT NULL,
    content TEXT
);

-- WeatherInformation Table
CREATE TABLE Weather_Information (
    weather_id INT PRIMARY KEY,
    region_id INT NOT NULL,
    date DATE,
    weather_description VARCHAR(255),
    FOREIGN KEY (region_id)
        REFERENCES Region (region_id)
);