1. sqlite> SELECT * FROM states;
2. sqlite> SELECT * FROM regions;
3. sqlite> SELECT state_name, population FROM states;
4. sqlite> SELECT state_name, population FROM states ORDER BY population DESC;
5. sqlite> SELECT state_name FROM states WHERE region_id = 7;
6. sqlite> SELECT state_name, population_density FROM states WHERE population_density > 50 ORDER BY population_density ASC;
7. sqlite> SELECT state_name FROM states WHERE population BETWEEN 1000000 and 1500000;
8. sqlite> SELECT state_name, region_id FROM states ORDER BY region_id ASC;


