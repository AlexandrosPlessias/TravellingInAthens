# TravellingInAthens
* Travelling In Athens Site &amp; DataBase:

The site supports two types of users (visitors, registered) and four different types of POI - Points Of Interest (beach, club, restaurant, & hotel). For each POI we have a description, coordinates and a photo or video that can be seen in the "poi search". When it comes to functionality on every page there is a special area where you can login or if you are already connected click logout. Where there is a login, the user can be registered on our site if he does not have an account or it can be written from the "new POI entry". All users have the ability to find the POIs they want through the menu we have created in the "POI search on the map" and with one click on the marker they can see further information such as description, address or photo.

Then in the "search poi" all users have the ability to see in the table all the POI with their data and ask questions in the database to find POI based on category, type of content and name. In "top 5" visitors and registered users can vote once per IP only once their favorite POI and see the top five.

Finally, when registering a new POI, registered users fill out a form to enter the POI they want, it is worth noting that there is a dragable marker where the user can place the marker where he wants on the map.

* Installation and viewing:
The base is made in phpmyadmin and is MySQL (5.6.21) and has the name poi_site_database. In order to import the database, a new empty database with the same name (poi_site_database) and collation utf8_general_ci must first be created and “poi_site_database.sql” imported.

All work files (source code) are in the “mainSite” folder which is in the htdocs (htdocs / mainSite) folder and in the image subfolders are the images of the site and in the uploads are the files uploaded by the users (photo, video).

We have written php code in html files using .htaccess (which is in the mainSite folder) by inserting the appropriate apache (directiva) instruction. The username and password of the database are the default (root, ””)
