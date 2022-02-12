--Enter a function that calculates the total cost of all animal rescues in the PETRESCUE table.

select sum(COST) from PETRESCUE;

/* Enter a function that displays the total cost of all animal rescues in the PETRESCUE table 
in a column called SUM_OF_COST. */

select sum(COST) as "SUM_OF_COST" from PETRESCUE;

-- Enter a function that displays the maximum quantity of animals rescued.

select max(QUANTITY) from PETRESCUE;

-- Enter a function that displays the average cost of animals rescued.

select avg(COST) from PETRESCUE;

-- Enter a function that displays the average cost of rescuing a dog.

select avg(COST/QUANTITY) from PETRESCUE where ANIMAL = 'Dog';

-- Enter a function that displays the rounded cost of each rescue.

select round(COST) from PETRESCUE;

-- Enter a function that displays the length of each animal name.

select ANIMAL, length(ANIMAL) from PETRESCUE;

-- Enter a function that displays the animal name in each rescue in uppercase.

select upper(ANIMAL) from PETRESCUE;

-- Enter a function that displays the animal name in each rescue in uppercase without duplications.

select distinct(upper(ANIMAL)) from PETRESCUE;

/* Enter a query that displays all the columns from the PETRESCUE table, 
where the animal(s) rescued are cats. Use cat in lower case in the query. */

select * from PETRESCUE where lower(ANIMAL) = 'cat';

-- Enter a function that displays the day of the month when cats have been rescued.

select day(RESCUEDATE) from PETRESCUE where ANIMAL = 'Cat';

-- Enter a function that displays the number of rescues on the 5th month.

select sum(QUANTITY) from PETRESCUE where month(RESCUEDATE) = '05';

-- Enter a function that displays the number of rescues on the 14th day of the month.

select sum(QUANTITY) from PETRESCUE where day(RESCUEDATE) = '14';

/* Animals rescued should see the vet within three days of arrivals. 
Enter a function that displays the third day from each rescue. */

select (RESCUEDATE + 3 days) from PETRESCUE;

/* Enter a function that displays the length of time the animals have been rescued; 
the difference between today’s date and the recue date. */

select (current_date - RESCUEDATE) from PETRESCUE;
