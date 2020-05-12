# Had to turn off safe updates to do this this way. Should I intsead be retrieving the appropriate keys and updating that way or is this option fine? 
UPDATE salespersons
SET store = "Miami"
WHERE store = "Mimia";


#There must be a better way than this - surely
UPDATE customers 
SET email = "ppicasso@gmail.com" WHERE cust_id = 1;
UPDATE customers 
SET email = "lincoln@us.gov" WHERE cust_id = 2;
UPDATE customers 
SET email = "hello@napoleon.me" WHERE cust_id = 3;

DELETE FROM cars
where car_id = 5

