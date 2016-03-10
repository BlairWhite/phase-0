1.  SELECT * FROM states;

2. SELECT * FROM regions;

3. SELECT state_name, population
   ...> FROM states;

4. SELECT state_name, population
   ...> FROM states
   ...> ORDER BY population DESC;

5. SELECT state_name
   ...> FROM states
   ...> WHERE region_id = 7;

6. SELECT state_name, population_density
   ...> FROM states
   ...> WHERE population_density > 50
   ...> ORDER BY population_density;

7. SELECT state_name
   ...> FROM states
   ...> WHERE population BETWEEN 1000000 AND 1500000;

8. SELECT state_name, region_id
   ...> FROM states
   ...> ORDER BY region_id;

9. SELECT region_name
   ...> FROM regions
   ...> WHERE region_name LIKE '%central%';

 <img href="clueless">


 A database is a place to store large amounts of information. They are searchable and can be updated.

 A one-to-many relationship is when one category of thing has many subqualities, but all of those subqualities are all part of the original category. IT is a one to many if you can say "____ belongs to a ____. ____ has many ____."

 Each table can only have one Primary Key (usually id). Must have unique values, cannot be null.
 A foreign key is a key or combination of keys that link to the Primary key in another table to link the two tables.

 To select information out of a SQL database, follow this syntax:
 SELECT column_name, column_name
 FROM table_name
 WHERE condition
 ORDER BY condition-->

