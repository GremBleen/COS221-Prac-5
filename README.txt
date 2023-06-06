Introduction:

Welcome to GrapeVine, the user-friendly platform that takes you on an immersive journey into the world of wine tourism. Whether you're a wine enthusiast, a connoisseur, or simply someone seeking a delightful experience, GrapeVine is your go-to destination for exploring various wines, wineries, and wine farms. The platform allows for multiple functionalities, such as viewing wines and their attributes, creating reviews, viewing wineries and allow verified users to edit winery catalogs.

Installation and Setup:

First, git clone the main branch into the folder where you want the installation to be. For our implementation, you will need XAMPP installed. Once you have XAMPP installed, go to localhost/phpmyadmin create a new user with a username and password and grant it all the permissions possible. Take note of the username and password as you will need to change a few files. Create a new database in phpmyadmin and note the name of the database, and go to the SQL tab. Paste the contents of dump2.sql into the SQL table and click GO, which will create the tables and fill in the relevant data.

In GWSAPI.php, validate_signup.php and login.php, set these variables accordingly:

$servername = "localhost";
$username = "user"; [Set when you created user in phpmyadmin]
$password = "ajaxb3zzy"; [Set when you created user in phpmyadmin]
$dbname = "gws"; [Set when you created database in phpmyadmin]

Now, ensure that Apache and MySQL are runnning in the XAMPP app, and navigate to the respective localhost URL as decided by your filepath for your installation.

Features:

Sign-Up/Login: Users can sign up as well as login to the website. After they have logged in, they can also log out.

Wine Page: All the wines are displayed on the wine page. You can search for wines by name. You can also filter by regions, wineries and sort by attributes such as price. You can use the rate button, where you will fill in the wines' id, put a description for your rating and give a score and submit to create a review for the wine. You can use the reset button to reset the page.

Wineries Page: This displays all wineries in the database. You can search for wineries by name. The page displays all the attributes of the wineries such as continent, country, region etc.

Ratings Page: This page displays the ratings from users on wineries.

Manage Wineries: This page will only be useable by users with the necessary permissions. Users with permissions can add wine to a winery's catalog as well as delete one.

Local Attractions: This page will provide the user with events they can attend based on their location selected.

File structure:

The main api file as well as other files such as the sql dump file and api documentation are in the root directory. Inside the GrapeVine folder, we have our front end. The main php files are inside GrapeVine, whereas the smaller files such as the navbar and login.php files are inside the php folder. css, js and img contain the CSS, JavaScript and images used respectively.
