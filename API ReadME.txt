This API is written with PHP and hosted on the wheatley server. It includes functions related to retrieving and sorting wine data from a MySQL database.

The code starts by establishing a connection to the MySQL database using the provided server name, username, password, and database name.

There are several functions defined in the code:

1.getWinesDetails($conn, $numberOfWines): Retrieves wine details from the database, including information such as wine ID, name, type, region, winery, vintage, quality, price, and average rating. It returns the data in JSON format.

2.getAllWines($conn): Retrieves details for all wines from the database, similar to the previous function.

3.SortWinesByPrice($conn, $numberOfWines): Retrieves wine details and sorts them by price in ascending order.

4.SortWinesByQuality($conn, $numberOfWines): Retrieves wine details and sorts them by quality in ascending order.

5.SortWinesByRegion($conn, $region_id, $numberOfWines): Retrieves wine details for a specific region (identified by $region_id) and sorts them by wine name in ascending order.

6.SortWinesByName($conn, $wine_name): Retrieves wine details that match a specific wine name (identified by $wine_name).

7.getWinesByWinery($conn, $winery_id): Retrieves wine details for a specific winery (identified by $winery_id).

8.insertReview($conn, $wine_id, $rating, $comment): Inserts a new review into the database, including the wine ID, rating, and comment. It requires the user to be logged in (checks for a session user ID).

9.getAllReviews($conn): Retrieves all reviews from the database, including the associated wine details and user names.

10.getAllRatings($conn): Retrieves all ratings from the database.

Each function performs a database query using SQL statements to fetch the required data. The retrieved data is then stored in arrays and returned in JSON format.