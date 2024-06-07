

--Question 1
--Show the first and last names of actors whose first name includes the names Nick, Ed, and Jennifer.
--answer to the first question--

SELECT first_name, last_name
FROM actor
WHERE first_name IN ('Nick', 'Ed', 'Jennifer');



--Question 12
--Show the maximum and minimum amount in the payment table.
--Answer to the twelfth question--

SELECT 
    MAX(amount) AS maximum_amount,
    MIN(amount) AS minimum_amount
FROM 
    Payment;





